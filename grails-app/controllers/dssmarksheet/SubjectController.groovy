package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class SubjectController {

    def index() {
        def subjectList = Subject.findAll()
        [subjectList: subjectList]
    }
    def create(){
        def subjectInstance =  new Subject(params)
        [ subjectInstance: subjectInstance]
    }
    def saveForm(){
        String subjectName = params.subjectName
        int fullMarks = Integer.parseInt(params.fullMarks)
        int passMarks = Integer.parseInt(params.passMarks)
        int theoryMarks = Integer.parseInt(params.theoryMarks)
        int practicalMarks = Integer.parseInt(params.practicalMarks)

        Subject subject = new Subject()
        subject.subjectName = subjectName
        subject.fullMarks = fullMarks
        subject.passMarks = passMarks
        subject.theoryMarks = theoryMarks
        subject.practicalMarks = practicalMarks
        subject.save(flush:true, failOnError:true)
        redirect(action: "index")

    }
    def edit(){
        def subjectInstance = Subject.findById(params.id)
        [subjectInstance: subjectInstance]


    }

    def update(){
        def subjectToUpdate = Subject.findById(params.id as long)
        String subjectName = params.subjectName as String
        int fullMarks = Integer.parseInt(params.fullMarks)
        int passMarks = Integer.parseInt(params.passMarks)
        int theoryMarks = Integer.parseInt(params.theoryMarks)
        int practicalMarks = Integer.parseInt(params.practicalMarks)
        subjectToUpdate.subjectName = subjectName
        subjectToUpdate.fullMarks = fullMarks
        subjectToUpdate.passMarks = passMarks
        subjectToUpdate.theoryMarks = theoryMarks
        subjectToUpdate.practicalMarks = practicalMarks
        subjectToUpdate.save(flush:true,failOnError:true)
        redirect(action: "index")

    }
    def delete(){
        def subjectToDelete = Subject.findById(params.id as long)
        subjectToDelete.delete(flush: true)
        redirect(action: "index")
    }
}
