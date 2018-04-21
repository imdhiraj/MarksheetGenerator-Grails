package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_ADMIN")
class GradeSubjectController {

    def index() {
        def gradeList = Grade.findAll()
        [gradeList: gradeList]
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
        [gradeSubjectList:gradeSubjectList]

    }

    def delete(){
        def gradeSubjectToDelete = GradeSubject.findById(params.id as long)
        if(!TeacherGradeSubject.findByGradeSubject(gradeSubjectToDelete)){
            gradeSubjectToDelete.delete(flush: true)
            redirect(action: "index")
        }else{
            println "Cannot Be Deleted!"
            redirect(action: "index")
        }

    }

}
