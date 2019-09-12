package entity;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Estimates {
    private int id;
    private int estimatesValue;
    private List<Discipline> disciplines = new ArrayList<>();
    private List<Semestr> semestrs = new ArrayList<>();
    private List<Student> students = new ArrayList<>();

    public Estimates() {
    }

    public Estimates(int id, int estimatesValue, List<Discipline> disciplines, List<Semestr> semestrs, List<Student> students) {
        this.id = id;
        this.estimatesValue = estimatesValue;
        this.disciplines = disciplines;
        this.semestrs = semestrs;
        this.students = students;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEstimatesValue() {
        return estimatesValue;
    }

    public void setEstimatesValue(int estimatesValue) {
        this.estimatesValue = estimatesValue;
    }

    public List<Discipline> getDisciplines() {
        return disciplines;
    }

    public void setDisciplines(List<Discipline> disciplines) {
        this.disciplines = disciplines;
    }

    public List<Semestr> getSemestrs() {
        return semestrs;
    }

    public void setSemestrs(List<Semestr> semestrs) {
        this.semestrs = semestrs;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Estimates)) return false;
        Estimates estimates = (Estimates) o;
        return getId() == estimates.getId() &&
                getEstimatesValue() == estimates.getEstimatesValue() &&
                Objects.equals(getDisciplines(), estimates.getDisciplines()) &&
                Objects.equals(getSemestrs(), estimates.getSemestrs()) &&
                Objects.equals(getStudents(), estimates.getStudents());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getEstimatesValue(), getDisciplines(), getSemestrs(), getStudents());
    }

    @Override
    public String toString() {
        return "Estimates{" +
                "id=" + id +
                ", estimatesValue=" + estimatesValue +
                ", disciplines=" + disciplines +
                ", semestrs=" + semestrs +
                ", students=" + students +
                '}';
    }
}
