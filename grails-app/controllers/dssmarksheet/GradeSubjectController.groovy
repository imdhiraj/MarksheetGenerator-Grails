package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_ADMIN")
class GradeSubjectController {

    def index() {
        def gradeList = Grade.findAll()
        [gradeList: gradeList]
    }
    def create(){
        def grade = params.id
        println "grade = $grade"
        def gradeList = Grade.findAll()
        def subjectList = Subject.findAll()
        [gradeList:gradeList, subjectList: subjectList,grade: grade]
    }
    def saveForm(){
        def grade = Grade.findByGradeNo(params.gradeNo)
        def subject = Subject.findById(params.subjectName as String)
//        String subjects = params.subjectName
//        def gr = grades as Grade.GradeNo
//        Grade grade = Grade.findByGradeNo(gr)
//        def sub = subjects as Subject
        GradeSubject gradeSubject = new  GradeSubject()
        gradeSubject.gradeNo = grade
        gradeSubject.subjectName = subject
        if(!GradeSubject.findBySubjectNameAndGradeNo(subject,grade)){
            gradeSubject.save(flush:true,failOnError:true)
            redirect(action: "index")
        }else{
            println "Error Already exists"
            redirect(action: "create",params: params)
        }

    }
    def show(){
        def grade = Grade.findById(params.id as long)
        def gradeSubjectList = GradeSubject.findAllByGradeNo(grade)
        [gradeSubjectList:gradeSubjectList,grade: grade]

    }

    def delete(){
        def gradeSubjectToDelete = GradeSubject.findById(params.id as long)
        if(!TeacherGradeSubject.findByGradeSubject(gradeSubjectToDelete)){
            gradeSubjectToDelete.delete(flush: true)
            redirect(action: "index")
        }else{
            def msg =  "Cannot Be Deleted!"
            redirect(action: "index",model:[msg:msg])
        }

    }

}
