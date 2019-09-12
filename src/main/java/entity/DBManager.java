package entity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.Timestamp;


public class DBManager {
    public static List<Discipline> getAllActiveDisciplines() {
        ArrayList<Discipline> disciplines = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM discipline WHERE status = 1");
            while (rs.next()) {
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
                disciplines.add(discipline);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return disciplines;
    }


    public static void createDiscipline(String newDisc) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            stmt.execute("INSERT INTO `students_4`.`discipline` (`discipline`) VALUES ('" + newDisc + "');\n");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static List<Student> getAllActiveStudents() {
        ArrayList<Student> students = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM student WHERE status = 1");
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setSurname(rs.getString("surname"));
                student.setName(rs.getString("name"));
                student.setGroup(rs.getString("group"));
                student.setDate(rs.getDate("date"));
                students.add(student);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }


    public static void createStudent(String newSurn, String newNameStud, String newGroupStud, String newDateStud) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            stmt.execute("INSERT INTO `students_4`.`student` (`surname`, `name`, `group`, `date`) VALUES ('" + newSurn + newNameStud + newGroupStud + newDateStud + "');\n");

            //stmt.execute("INSERT INTO `students_4`.`student` (`surname`) VALUES ('" + newSurn + "');\n");
            //stmt.execute("INSERT INTO `students_4`.`student` (`name`) VALUES ('" + newNameStud + "');\n");
            //stmt.execute("INSERT INTO `students_4`.`student` (`group`) VALUES ('" + newGroupStud + "');\n");
           //stmt.execute("INSERT INTO `students_4`.`student` (`date`) VALUES ('" + newDateStud + "');\n");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
















