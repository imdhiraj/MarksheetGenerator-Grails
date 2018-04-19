package dssmarksheet

class Grade {

    enum GradeNo{
        GRADE_1,
        GRADE_2,
        GRADE_3,
        GRADE_4,
        GRADE_5,
        GRADE_6,
        GRADE_7,
        GRADE_8,
        GRADE_9,
        GRADE_10
    }
    GradeNo gradeNo

    static constraints = {
    }

    String toString(){
        String gr = gradeNo as String
        return gr
    }

}
