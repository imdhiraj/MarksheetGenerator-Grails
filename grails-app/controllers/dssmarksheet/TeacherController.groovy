package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class TeacherController {

    def index() {
        def teacherList = Teacher.findAll()
        [teacherList: teacherList]
    }

    def create() {
        def teacherInstance =  new Teacher(params)
        [ teacherInstacne: teacherInstance]

    }

    def saveForm(){
        String teacherName = params.teacherName
        String address = params.address
        int contactNumber = Integer.parseInt(params.contact as String)
        String email = params.email

        Teacher teacher = new Teacher()
        teacher.teacherName = teacherName
        teacher.address =  address
        teacher.contactNumber = contactNumber
        teacher.email = email
        teacher.save(flush:true, failOnError:true)
        redirect(action: "index")

    }

    def edit(){
        def teacherInstance = Teacher.findAllById(params.id)
        [teacherInstance: teacherInstance]

    }

    def update(){
        def teacherToUpdate = Teacher.findById(params.id as long)
        String teacherName = params.name as String
        String address = params.address as String
        String contactNumber =  Integer.parseInt(params.contactNumber as String)
        String email = params.email as String

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

    }
}
