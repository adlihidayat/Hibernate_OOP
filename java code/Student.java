package com.example;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name="students")
public class Student extends User{
    @Column(name="student_id", nullable=false, unique=true)
    private String studentId;
    @Column(name="student_name", nullable=false)
    private String studentNameId;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "teacherPA")
    private Teacher supervisor;
    @ManyToOne
    @JoinColumn(name = "class_id")
    private Class enrolledClass;
    @OneToMany
    private List<Score> scores = new ArrayList<>();
    @ManyToMany(mappedBy = "assignees")
    private List<Assignment> assignments;
    @ManyToMany(mappedBy = "attandees")
    private List<Meeting> meetings;

    public Student(String username, String password, String studentId) {
        super(username, password);
        this.studentId = studentId;
        this.studentNameId = username;
    }


    public String getStudentId() {
        return studentId;
    }
    public String getStudentNameId() {
        return studentNameId;
    }
    public void setSupervisor(Teacher supervisor) {
        this.supervisor = supervisor;
    }
    public List<Score> getScores() {
        return scores;
    }
    public void setScores(List<Score> scores) {
        this.scores = scores;
    }
}
