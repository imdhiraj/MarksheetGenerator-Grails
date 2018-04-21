package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class TeacherController {
    def springSecurityService
    def index() {
        def teacherList = Teacher.findAll()
        [teacherList: teacherList]
    }

    def create() {
        def teacherInstance =  new Teacher(params)
        [ teacherInstance: teacherInstance]

    }

    def saveForm(){
        String teacherName = params.teacherName
        String address = params.address
        int contactNumber = Integer.parseInt(params.contact as String)
        String email = params.email
        String password = params.password
        def username = email.split("@")
        String u = username[0]

        User user = new User()
        user.username = u
        user.password = password
        user.save(flush:true)
        Role role = Role.findByAuthority("ROLE_USER")
        UserRole userRole = new UserRole()
        userRole.user = user
        userRole.role = role
        userRole.save(flush:true, failOnError:true)

        Teacher teacher = new Teacher()
        teacher.user = user
        teacher.teacherName = teacherName
        teacher.address =  address
        teacher.contactNumber = contactNumber
        teacher.email = email
        teacher.save(flush:true, failOnError:true)
        redirect(action: "index")

    }

    def edit(){
        def teacherInstance = Teacher.findById(params.id)
        [teacherInstance: teacherInstance]

    }

    def update(){
        def teacherToUpdate = Teacher.findById(params.id as long)
        String teacherName = params.teacherName as String
        String address = params.address as String
        int contactNumber =  Integer.parseInt(params.contact as String)
        String email = params.email as String
        print(teacherName)
        teacherToUpdate.teacherName = teacherName
        teacherToUpdate.address = address
        teacherToUpdate.contactNumber = contactNumber
        teacherToUpdate.email = email

        teacherToUpdate.save(flush:true,failOnError:true)
        redirect(action: "index")
    }


    def delete(){
        def teacherToDelete = Teacher.findById(params.id as long)
        teacherToDelete.delete(flush: true)
        redirect(action: "index")
    }
    @Secured("ROLE_USER")
    def dashboard(){

        def user = springSecurityService.currentUser
        Teacher teacher = Teacher.findByUser(user);
        def teacherGradeSubject = TeacherGradeSubject.findAllByTeacher(teacher)
        def gradeSubjectList = []
        print(user)
        println(teacher)
        println(teacherGradeSubject)
        teacherGradeSubject.each{it->
            GradeSubject gradeSubjectLists = it.gradeSubject
            gradeSubjectList.add(gradeSubjectLists)
        }

        [gradeSubjectList: gradeSubjectList]

    }
    @Secured("ROLE_USER")
    def show(){
        def gradeSubject = GradeSubject.findById(params.id as long)
        def grade = gradeSubject.gradeNo
        def studentList = Student.findByGrade(grade)
        [studentList: studentList]
    }

}
