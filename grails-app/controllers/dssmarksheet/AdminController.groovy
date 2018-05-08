package dssmarksheet

import org.springframework.security.access.annotation.Secured

@Secured('ROLE_ADMIN')
class AdminController {

    def index() { }

    def dashboard(){
        def gradeList = Grade.findAll()
        [gradeList: gradeList]
    }
}
