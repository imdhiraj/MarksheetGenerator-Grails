package dssmarksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])
class DashboardController {

    def springSecurityService
    def index() {
        def user = springSecurityService.currentUser
        def userRole = UserRole.findByUser(user)
//        def roles = springSecurityService.getAuthentication().getAuthorities().toString()
        if(userRole.role.authority=="ROLE_ADMIN"){
            redirect(controller: "admin", action: "dashboard")
        }else{
            redirect(controller: "teacher", action: "dashboard")
        }

    }
}
