package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_ADMIN")
class GradeSubjectController {

    def index() {
        def gradeSubjectList = GradeSubject.findAll()
        [gradeSubjectList: gradeSubjectList]
    }
    def create(){
        def gradeList = Grade.findAll()
        def subjectList = Subject.findAll()
        [gradeList:gradeList, subjectList: subjectList]
    }
    def saveForm(){
        def grade = Grade.findById(params.gradeNo as long)
        def subject = Subject.findById(params.subjectName as String)
//        String subjects = params.subjectName
//        def gr = grades as Grade.GradeNo
//        Grade grade = Grade.findByGradeNo(gr)
//        def sub = subjects as Subject
        GradeSubject gradeSubject = new  GradeSubject()
        gradeSubject.gradeNo = grade
        gradeSubject.subjectName = subject
        gradeSubject.save(flush:true,failOnError:true)
        redirect(action: "index")
    }

}
