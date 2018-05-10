package marksheet

class GradeAndGradePointTagLib {
    def grade = { attrs, body ->

        def marksObtained = (Double)attrs.get('value')


        if(marksObtained >=90){
            out << body() << "A+"
        }

        else if(marksObtained >=80 && marksObtained<90){
            out << body() << "A"
        }

        else if(marksObtained >=70 && marksObtained<80){
            out << body() << "B+"
        }

        else if(marksObtained >=60 && marksObtained<70){
            out << body() << "B"
        }

        else if(marksObtained >=50 && marksObtained<60){
            out << body() << "C+"
        }

        else if(marksObtained >=40 && marksObtained<50){
            out << body() << "C"
        }

        else if(marksObtained >=20 && marksObtained<40){
            out << body() << "D"
        }

        else if(marksObtained >=1 && marksObtained<20){
            out << body() << "E"
        }
        else{
            out << body() << "N"
        }
    }


    def overallGrade={attrs, body ->
        def marksObtained = (Double)attrs.get('value')


        if(marksObtained >=90){
            out << body() << "A+"
        }

        else if(marksObtained >=80 && marksObtained<90){
            out << body() << "A"
        }

        else if(marksObtained >=70 && marksObtained<80){
            out << body() << "B+"
        }

        else if(marksObtained >=60 && marksObtained<70){
            out << body() << "B"
        }

        else if(marksObtained >=50 && marksObtained<60){
            out << body() << "C+"
        }

        else if(marksObtained >=40 && marksObtained<50){
            out << body() << "C"
        }

        else if(marksObtained >=20 && marksObtained<40){
            out << body() << "D"
        }

        else if(marksObtained >=1 && marksObtained<20){
            out << body() << "E"
        }
        else{
            out << body() << "N"
        }

    }
    def gradePoint={attrs, body ->
        def marksObtained = (Double)attrs.get('value')
        if(marksObtained >=90){

            out << body() << "4.0"
        }

        else if(marksObtained >=80 && marksObtained<90){
            out << body() << "3.6"
        }

        else if(marksObtained >=70 && marksObtained<80){
            out << body() << "3.2"
        }

        else if(marksObtained >=60 && marksObtained<70){
            out << body() << "2.8"
        }

        else if(marksObtained >=50 && marksObtained<60){
            out << body() << "2.4"
        }

        else if(marksObtained >=40 && marksObtained<50){
            out << body() << "2.0"
        }

        else if(marksObtained >=20 && marksObtained<40){
            out << body() << "1.6"
        }

        else if(marksObtained >=1 && marksObtained<20){
            out << body() << "0.8"
        }
        else{
            out << body() << "0"
        }

    }
    def overallGradePoint={attrs, body ->
        def marksObtained = (Double)attrs.get('value')
        if(marksObtained >=90){

            out << body() << "4.0"
        }

        else if(marksObtained >=80 && marksObtained<90){
            out << body() << "3.6"
        }

        else if(marksObtained >=70 && marksObtained<80){
            out << body() << "3.2"
        }

        else if(marksObtained >=60 && marksObtained<70){
            out << body() << "2.8"
        }

        else if(marksObtained >=50 && marksObtained<60){
            out << body() << "2.4"
        }

        else if(marksObtained >=40 && marksObtained<50){
            out << body() << "2.0"
        }

        else if(marksObtained >=20 && marksObtained<40){
            out << body() << "1.6"
        }

        else if(marksObtained >=1 && marksObtained<20){
            out << body() << "0.8"
        }
        else{
            out << body() << "0"
        }

    }
}