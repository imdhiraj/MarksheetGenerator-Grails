package dssmarksheet

class Teacher {

    String teacherName
    String address
    String contactNumber
    String email
    User user

    static constraints = {
        email(blank: false, email: true)
    }
    String toString(){
        teacherName
    }
}
