package entity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


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
            stmt.execute("INSERT INTO `discipline` (`discipline`) VALUES ('" + newDisc + "');\n");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Discipline getDisciplineById(String id) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM discipline WHERE status = 1 AND id = " + id);
            while (rs.next()) {
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
                return discipline;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void modifyDiscipline(String idDisc, String newName) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            stmt.execute("UPDATE `discipline` SET `discipline` = '" + newName + "' WHERE (`id` = '" + idDisc + "');\n");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteDiscipline(String id) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            stmt.execute("UPDATE `discipline` SET `status` = '0' WHERE (`id` = '" + id + "');");

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
            stmt.execute("INSERT INTO `student` (`surname`, `name`, `group`, `date`) VALUES ('" + newSurn + "','" + newNameStud + "','" + newGroupStud + "','" + newDateStud + "');\n");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Student getStudentById(String idStud) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM student WHERE status = 1 AND id = " + idStud);
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setSurname(rs.getString("surname"));
                student.setName(rs.getString("name"));
                student.setGroup(rs.getString("group"));
                student.setDate(rs.getDate("date"));
                return student;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void modifyStudent(String idStud, String newSurname, String newName, String newGroup, String newDate) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            stmt.execute("UPDATE `student` SET `surname` = '" + newSurname + "', `name` = '" + newName + "', `group` = '" + newGroup + "', `date` = '" + newDate + "' WHERE (`id` = '" + idStud + "');\n");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteStudent(String idStud) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            stmt.execute("UPDATE `student` SET `status` = '0' WHERE (`id` = '" + idStud + "');");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<Semestr> getAllActiveSemestrs() {
        ArrayList<Semestr> semestrs = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM `semestr` WHERE status = 1");
            while (rs.next()) {
                Semestr semestr = new Semestr();
                semestr.setId(rs.getInt("id"));
                semestr.setSemestr(rs.getString("semestr"));
                semestr.setDuration(rs.getString("duration"));
                semestrs.add(semestr);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return semestrs;
    }

    public static List<Discipline> getDisciplinesInTerm(String idSem) {
        ArrayList<Discipline> disciplinesInSemestr = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM semestr_discipline AS sd\n" +
                    "LEFT JOIN discipline AS d ON sd.id_discipline = d.id\n" +
                    "WHERE sd.id_semestr = " + idSem + " AND d.status = 1");
            while (rs.next()) {
                Discipline discipline = new Discipline();
                int idDisc = rs.getInt("id_discipline");
                discipline.setId(idDisc);
                discipline.setDiscipline(rs.getString("discipline"));
                disciplinesInSemestr.add(discipline);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return disciplinesInSemestr;
    }

    public static Semestr getSemestrById(String id) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM semestr WHERE status = 1 AND id = " + id);
            while (rs.next()) {
                Semestr semestr = new Semestr();
                semestr.setId(rs.getInt("id"));
                semestr.setSemestr(rs.getString("semestr"));
                semestr.setDuration(rs.getString("duration"));
                return semestr;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static Account getAccount(String login, String password, String role) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM account where login = '" + login + "' and password = '" + password + "' and role='" + role + "';");
            while (rs.next()) {
                Account account = new Account();
                account.setId(rs.getInt("id"));
                account.setLogin(rs.getString("login"));
                account.setPassword(rs.getString("password"));
                account.setRole(rs.getString("role"));
                return account;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static List<Mark> getMarksByStudentSemestr(String idStud, int idSemestr) {
        ArrayList<Mark> marks = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_4?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM mark\n" +
                    "LEFT JOIN semestr_discipline AS sd ON mark.id_semestr_discipline = sd.id\n" +
                    "LEFT JOIN discipline AS d ON sd.id_discipline = d.id\n" +
                    "LEFT JOIN semestr AS s ON sd.id_semestr = s.id\n" +
                    "WHERE mark.id_stud = " + idStud + "\n" +
                    "AND sd.id_semestr = " + idSemestr + "\n" +
                    "AND d.status = 1\n" +
                    "AND s.status = 1");
            while (rs.next()) {
                Mark mark = new Mark();
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id_discipline"));
                discipline.setDiscipline(rs.getString("discipline"));
                discipline.setStatus(1);
                mark.setDiscipline(discipline);
                mark.setMark(rs.getString("mark"));
                marks.add(mark);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return marks;
    }
}
















