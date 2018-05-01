package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class MarksheetController {

    def index() {
        def gradeList = Grade.findAll()
        [gradeList: gradeList]
    }
    def viewStudent(){

        def grade = Grade.findById(params.id as long)
        def studentList = Student.findAllByGrade(grade)
        println "studentList = $studentList.name"
        [studentList:studentList]


    }
    def show(){

        def grade = Grade.findById(params.id as long)
        def gradeSubject = GradeSubject.findAllByGradeNo(grade)
        print("-----------------Grade subject"+gradeSubject)
        def teacherGradeSubjectList = []
        gradeSubject.each {it->
//            println("GradeSubjectEach:_-----------------------"+it)
            def teacherGradeSubject = TeacherGradeSubject.findAllByGradeSubject(it)
            teacherGradeSubject.each {on->
                teacherGradeSubjectList.add(on)
            }
        }
        println "teacherGradeSubjectList = $teacherGradeSubjectList"
        def studentMarksList = []
        teacherGradeSubjectList.each{ it ->
            def studentMarks = StudentMarks.findAllByTeacherGradeSubject(it)
            studentMarks.each{ot->
                studentMarksList.add(ot)
            }
        }
        println "studentMarksList = $studentMarksList"
        [studentMarksList:studentMarksList]
//        def studentList = Student.findAllByGrade(grade)
//        def marksList = StudentMarks.findAllByStudent(Student)







//        def grade = Grade.findById(params.id as long)
//        def studentMarks = StudentMarks.findAllById(params.id as long)
//        print(grade)
//        def gradeSubjectList = GradeSubject.findAllByGradeNo(grade)
//        def studentList = Student.findAllByGrade(grade)
//        print studentList.name
//        def teacher = TeacherGradeSubject.findAllByGradeSubject(gradeSubjectList[])
//        print teacher.gradeSubject
////        def studentMarks = StudentMarks.findByTeacherGradeSubject(gradeSubjectList)
////        print("--------------Grade subject"+gradeSubjectList)
////        TeacherGradeSubject teacherGradeSubject = new TeacherGradeSubject()
////        def studentlist =StudentMarks.findByTeacherGradeSubject()
////        [gradeSubjectList:gradeSubjectList]

    }
    def viewStudentMarks(){
        println params.id
        def student = Student.findById(params.id as long)
        def grade = student.grade
        def gradeSubjectList = GradeSubject.findAllByGradeNo(grade)

//        def teacherGradeSubject = TeacherGradeSubject.findByGradeSubject(gradeSubjectList)
        println "gradeSubjectList.subjectName = $gradeSubjectList.subjectName"
//        def studentMarks = StudentMarks.findByStudentAndTeacherGradeSubject()
        [gradeSubjectList:gradeSubjectList,studentInstance: student]

//        def studentMarks = StudentMarks.findByStudent(student).marksObtained
//        println "studentMarks = $studentMarks"
//        def studentMarks = StudentMarks.findAllByStudent(student)
//        println "studentMarks = $studentMarks"

    }
}
