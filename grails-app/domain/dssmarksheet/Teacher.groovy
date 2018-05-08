package dssmarksheet

class Teacher {

    String teacherName
    String email
    User user

    static constraints = {
        email(blank: false, email: true)
    }
    String toString(){
        teacherName
    }
}
