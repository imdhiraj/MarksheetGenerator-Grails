package dssmarksheet

class GradeSubject {


    Grade gradeNo
    Subject subjectName


    static constraints = {
    }
    String toString(){
        String gr = gradeNo.toString()
        String strToDisplay = gr+" - "+subjectName
        return strToDisplay
    }
}
