package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class TeacherController {
    def springSecurityService
    def mailService

    def index() {
        def teacherList = Teacher.findAll()
        [teacherList: teacherList]
    }

    def create() {
        def teacherInstance = new Teacher(params)
        [teacherInstance: teacherInstance]

    }

    def saveForm() {
        String teacherName = params.teacherName
        String email = params.email
        println "email = $email"
        String password = params.password
        def username = email.split("@")
        String u = username[0]
        mailService.sendMail{
            to params.email
            subject "Username and password"
            text 'Hello '+teacherName+","+"\n Your username and password are:\nUsername: "+ u +"\n Password: "+password+"\nThank you"

        }
        User user = new User()
        user.username = u
        user.password = password
        user.save(flush: true)
        Role role = Role.findByAuthority("ROLE_USER")
        UserRole userRole = new UserRole()
        userRole.user = user
        userRole.role = role
        userRole.save(flush: true, failOnError: true)

        Teacher teacher = new Teacher()
        teacher.user = user
        teacher.teacherName = teacherName
        teacher.email = params.email
        def messageType = ""
        if (teacher.save(flush: true, failOnError: true)) {
            flash.message = "Teacher successfully added."
            messageType = "success"
        } else {
            flash.message = "Teacher not added."
            messageType = "error"
        }
        redirect(action: "index", params: [messageType: messageType])

    }

    def edit() {
        def teacherInstance = Teacher.findById(params.id)
        [teacherInstance: teacherInstance]

    }

    def update() {
        def teacherToUpdate = Teacher.findById(params.id as long)
        String teacherName = params.teacherName as String
        String email = params.email as String
        print(teacherName)
        teacherToUpdate.teacherName = teacherName
        teacherToUpdate.email = email

        teacherToUpdate.save(flush: true, failOnError: true)
        redirect(action: "index")
    }


    def delete() {
        def teacherToDelete = Teacher.findById(params.id as long)
        teacherToDelete.delete(flush: true)
        redirect(action: "index")
    }



    @Secured("ROLE_USER")
    def dashboard() {

        def user = springSecurityService.currentUser
        def teacher = Teacher.findByUser(user);
        def teacherGradeSubject = TeacherGradeSubject.findAllByTeacher(teacher)
        def gradeSubjectList = []
        def teacherName = teacher
        print(user)
        println(teacher)
        println(teacherGradeSubject)
        teacherGradeSubject.each { it ->
            GradeSubject gradeSubjectLists = it.gradeSubject
            gradeSubjectList.add(gradeSubjectLists)
        }

        [teacherName: teacherName, gradeSubjectList: gradeSubjectList]

    }

    @Secured("ROLE_USER")
    def show() {

        def gradeSubject = GradeSubject.findById(params.id as Long)
        print(gradeSubject)
//        String [] name = gradeSubject.toString().trim().split("-")
        def grade = gradeSubject.gradeNo
        def studentList = Student.findAllByGrade(grade)
        def teacher = Teacher.findByUser(springSecurityService.currentUser)
        def teacherGradeSubject = TeacherGradeSubject.findByTeacherAndGradeSubject(teacher, gradeSubject)
        print("---------------->>>>>>>>>>>>" + teacherGradeSubject.marksStatus)
        print("-----------------<<<<<<<<<<<<------------" + teacher)
        println "Flag value is " + params.flag as boolean
        [gradeSubject: gradeSubject, teacherGradeSubject: teacherGradeSubject, studentList: studentList, flag: params.flag as boolean]
    }


    @Secured("ROLE_USER")
    def subjectMarks() {
        println("------------ " + params)

        def studentList = params.list('studentName[]')
        def markList = params.list('obtainedMarks[]')
        def gradeSubject = GradeSubject.findById(params.subject as long)
        String[] name = gradeSubject.toString().trim().split("-")
        println("(((((((((((((((----" + name[0])
        println("(((((((((((((((----" + name[1])
        println("(((((((((((((((----" + Grade.findByGradeNo(name[0]))
//        def gradeSubject = GradeSubject.findByGradeNoAndSubjectName(Grade.GradeNo.name[0],Subject.findBySubjectName(name[1]))
//        print("-------"+gradeSubject)
        def teacher = Teacher.findByUser(springSecurityService.currentUser)

        for (def i = 0; i < studentList.size(); i++) {
            def sm = new StudentMarks()
            sm.student = Student.findByName(studentList[i])
//            sm.teacherGradeSubject = TeacherGradeSubject.findByTeacherAndGradeSubject(teacher,gradeSubject)

//            def t= Teacher.findByUser(springSecurityService.currentUser);
            def teacherGradeSubject = TeacherGradeSubject.findByTeacherAndGradeSubject(teacher, gradeSubject)
//            def gradeSubject = teacherGradeSubject.gradeSubject
            teacherGradeSubject.marksStatus = true

            teacherGradeSubject.save(flush: true)

            println("+++++++++++++++++-------------->>>>>>>" + teacherGradeSubject.marksStatus)
            sm.teacherGradeSubject = teacherGradeSubject
            sm.marksObtained = Double.parseDouble(markList[i])
            sm.save(flush: true, failOnError: true)
        }
    }

    @Secured("ROLE_USER")
    def editMarks() {
        def id = params.id
        def student = Student.findById(id as long)
        def studentMarks = StudentMarks.findByStudent(student)
        def obtainedMarks = studentMarks.marksObtained
        println "obtainedMarks = $obtainedMarks"
        [student: student, obtainedMarks: obtainedMarks]
    }

    def viewStudentMarks() {

    }

    def studentMarksheet() {

    }
}



