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
        def teacher = Teacher.findByUser(user);
        def teacherGradeSubject = TeacherGradeSubject.findAllByTeacher(teacher)
        def gradeSubjectList = []
        def teacherName= teacher
        print(user)
        println(teacher)
        println(teacherGradeSubject)
        teacherGradeSubject.each{it->
            GradeSubject gradeSubjectLists = it.gradeSubject
            gradeSubjectList.add(gradeSubjectLists)
        }

        [ teacherName:teacherName,gradeSubjectList: gradeSubjectList]

    }

    @Secured("ROLE_USER")
    def show(){
        def gradeSubject = GradeSubject.findById(params.id as long)
        print(gradeSubject)
        def grade = gradeSubject.gradeNo
        def studentList = Student.findAllByGrade(grade)
        [gradeSubject:gradeSubject,studentList: studentList]
    }


    @Secured("ROLE_USER")
    def subjectMarks(){
        println("------------ "+params)

        def studentList = params.list('studentName[]')
        def markList = params.list('obtainedMarks[]')
        String [] name = params.subject.toString().trim().split("-")
        println("(((((((((((((((----"+name[0])
        println("(((((((((((((((----"+name[1])
        println("(((((((((((((((----"+Grade.GradeNo.name[0])


//        def gradeSubject = GradeSubject.findByGradeNoAndSubjectName(Grade.GradeNo.name[0],Subject.findBySubjectName(name[1]))
//        print("-------"+gradeSubject)
        def teacher = Teacher.findByUser(springSecurityService.currentUser)

        for(def i=0;i<studentList.size();i++){
            def sm = new StudentMarks()
            sm.student = Student.findByName(studentList[i])
//            sm.teacherGradeSubject = TeacherGradeSubject.findByTeacherAndGradeSubject(teacher,gradeSubject)

            def t= Teacher.findByUser(springSecurityService.currentUser);
            def teacherGradeSubject = TeacherGradeSubject.findByTeacher(teacher)

            sm.teacherGradeSubject = teacherGradeSubject
            sm.marksObtained=Double.parseDouble(markList[i])
            sm.save(flush:true,failOnError:true)
        }
        redirect(action: 'viewStudentMarks')
    }
    def viewStudentMarks(){
        def studentMarksList = StudentMarks.findAll()
        [studentMarksList:studentMarksList]

    }

    def studentMarksheet(){

        def sub = "GRADE_2 - Math"
        def t= Teacher.findByUser(springSecurityService.currentUser);
        def teacherGradeSubject = TeacherGradeSubject.findByTeacher(teacher)



    }


}
