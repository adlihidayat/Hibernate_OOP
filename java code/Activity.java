package com.example;

import javax.persistence.*;

@Entity
@Table(name = "activities")
@Inheritance(strategy = InheritanceType.JOINED)
public class Activity {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private int id;
    private String name;
    private String description;

    @ManyToOne
    @JoinColumn(name = "teacher_id")
    private Teacher teacher;
    @ManyToOne
    @JoinColumn(name = "course_id")
    private Course course;
    @ManyToOne
    @JoinColumn(name = "class_id")
    private Class classs;

    public Activity(String name, String description) {
        this.name = name;
        this.description= description;
    };


    public void setCourse(Course course) {
        this.course = course;
    };
    public void setClass(Class classs) {
        this.classs = classs;
    };
    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    };
    public int getId() {
        return id;
    }
    public String getName() {
        return name;
    };
    public String getDescription() {
        return description;
    }
    public Course getCourse() {
        return course;
    };
    public Teacher getTeacher() {
        return teacher;
    };
    public Class getClasss() {
        return classs;
    };
}
