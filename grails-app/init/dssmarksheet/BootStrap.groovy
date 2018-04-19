package dssmarksheet

class BootStrap {

    def init = { servletContext ->
        if(!User.findByUsername('admin')){
            User admin = User.findOrCreateWhere(username:'admin',password:'admin')
            admin.save(flush:true)

            Role roleAdmin = Role.findOrCreateWhere(authority:'ROLE_ADMIN')
            roleAdmin.save(flush:true)

            UserRole.findOrSaveWhere(user:  admin, role:  roleAdmin)
        }

        if(!User.findByUsername('user')){
            User user = User.findOrCreateWhere(username:'user',password:'user')
            user.save(flush:true)

            Role roleUser = Role.findOrCreateWhere(authority:'ROLE_USER')
            roleUser.save(flush:true)

            UserRole.findOrSaveWhere(user: user, role:  roleUser)
        }

        def gradeList = ['GRADE_1','GRADE_2','GRADE_3','GRADE_4','GRADE_5','GRADE_6','GRADE_7','GRADE_8','GRADE_9','GRADE_10']
        gradeList.each{it->
            def gr = it as Grade.GradeNo
            if(!Grade.findByGradeNo(gr)){
                Grade grade = new Grade()
                grade.gradeNo = gr
                grade.save(flush:true)
            }
        }
    }
    def destroy = {
    }
}
