package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')

class StudentController {

    def index() {
        def gradeList = Grade.findAll()
        [gradeList: gradeList]
    }

    def create() {
        def gradeList = Grade.findAll()
        def studentInstance =  new Student(params)
        [gradeList:gradeList, studentInstance: studentInstance]
    }

    def saveForm(){
        String name = params.name
        int rollNo = Integer.parseInt(params.rollNo as String)
//        String grades = params.grade
////        println "grades = grades"
//        def gr = grades as Grade.GradeNo
//        Grade grade = Grade.findByGradeNo(gr)
        def grade = Grade.findById(params.grade as long)
        println "grade = $grade"
        Student student = new Student()
        student.name = name
        student.rollNo = rollNo
        student.grade = grade
        println "student = $student"
        student.save(flush:true,failOnError:true)
        redirect(action: "index")
    }

    def edit(){
        def gradeList = Grade.findAll()
        def studentInstance = Student.findById(params.id)
        [gradeList: gradeList, studentInstance: studentInstance]


    }

    def update(){
        def studentToUpdate = Student.findById(params.id as long)
        String name = params.name as String
        int rollNo =  Integer.parseInt(params.rollNo as String)
        def grade = Grade.findById(params.grade as long)
        studentToUpdate.name = name
        studentToUpdate.rollNo = rollNo
        studentToUpdate.grade = grade
        studentToUpdate.save(flush:true,failOnError:true)
        redirect(action: "index")

    }
    def delete(){
        def studentToDelete = Student.findById(params.id as long)
        studentToDelete.delete(flush: true)
        redirect(action: "index")
    }
    def show(){
        def grade = Grade.findById(params.id as long)
        def studentList = Student.findAllByGrade(grade)
        [studentList:studentList]
    }
}
