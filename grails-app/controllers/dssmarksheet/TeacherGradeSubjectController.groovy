package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured("ROLE_ADMIN")
class TeacherGradeSubjectController {

    def index() {
        def teacherGradeSubjectList = TeacherGradeSubject.findAll()
        [teacherGradeSubjectList: teacherGradeSubjectList]
    }

    def create(){
        def gradeSubjectList = GradeSubject.findAll()
        def teacherList = Teacher.findAll()
        [gradeSubjectList:gradeSubjectList, teacherList: teacherList]
    }

    def saveForm(){
        def teacher = Teacher.findById(params.teacherName as Long)
        def gradeSubject = GradeSubject.findById(params.gradeSubject as long)
//        String subjects = params.subjectName
//        def gr = grades as Grade.GradeNo
//        Grade grade = Grade.findByGradeNo(gr)if
//        def sub = subjects as Subject
        print(teacher)
        print(gradeSubject)
        TeacherGradeSubject teacherGradeSubject = new  TeacherGradeSubject()
        teacherGradeSubject.teacher = teacher
        teacherGradeSubject.gradeSubject = gradeSubject
        if(!TeacherGradeSubject.findByGradeSubject(gradeSubject)){
            teacherGradeSubject.save(flush:true,failOnError:true)
            redirect(action: "index")
        }
        else{
            String msg= "Grade Subject already Assigned to Teacher "
            render(view:'errorMsg',model: [msg:msg])
        }

    }

    def edit(){

    }
    def update(){

    }
    def delete(){
        def teacherGradeSubjectToDelete = TeacherGradeSubject.findById(params.id as long)
        teacherGradeSubjectToDelete.delete(flush: true)
        redirect(action: "index")
    }

}
