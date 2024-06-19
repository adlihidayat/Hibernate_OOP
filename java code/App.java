package com.example;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.time.LocalDateTime;
import java.util.List;

public class App {
    public static void main(String[] args) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.openSession();

        session.beginTransaction();

        // Creating instances and setting relationships
        //dosen
        Teacher teacher1 = new Teacher("Dr. John", "101", "Mathematics");
        Teacher teacher2 = new Teacher("Dr. James", "102", "English");
        Teacher teacher3 = new Teacher("Dr. Smith", "103", "Fisika");
        Teacher teacher4 = new Teacher("Dr. Alex", "104", "Algorithm");
        session.save(teacher1);
        session.save(teacher2);
        session.save(teacher3);
        session.save(teacher4);

        // mahasiswa
        Student student1 = new Student("Rizky", "12345", "221401001");
        student1.setSupervisor(teacher1);
        session.save(student1);

        Student student2 = new Student("Karina", "12345", "221401002");
        student2.setSupervisor(teacher1);
        session.save(student2);

        Student student3 = new Student("Berutu", "12345", "221401003");
        student3.setSupervisor(teacher2);
        session.save(student3);

        Student student4 = new Student("Andi", "12345", "221401004");
        student4.setSupervisor(teacher2);
        session.save(student4);

        Student student5 = new Student("Budi", "12345", "221401005");
        student5.setSupervisor(teacher3);
        session.save(student5);

        Student student6 = new Student("Citra", "12345", "221401006");
        student6.setSupervisor(teacher3);
        session.save(student6);

        Student student7 = new Student("Dewi", "12345", "221401007");
        student7.setSupervisor(teacher4);
        session.save(student7);

        Student student8 = new Student("Eka", "12345", "221401008");
        student8.setSupervisor(teacher4);
        session.save(student8);

        Student student9 = new Student("Fitri", "12345", "221401009");
        student9.setSupervisor(teacher1);
        session.save(student9);

        Student student10 = new Student("Gunawan", "12345", "221401010");
        student10.setSupervisor(teacher1);
        session.save(student10);

        Student student11 = new Student("Hendra", "12345", "221401011");
        student11.setSupervisor(teacher2);
        session.save(student11);

        Student student12 = new Student("Indah", "12345", "221401012");
        student12.setSupervisor(teacher3);
        session.save(student12);

        Student student13 = new Student("Joko", "12345", "221401013");
        student13.setSupervisor(teacher4);
        session.save(student13);

        Student student14 = new Student("Kartika", "12345", "221401014");
        student14.setSupervisor(teacher2);
        session.save(student14);

        Student student15 = new Student("Made", "12345", "221401015");
        student15.setSupervisor(teacher3);
        session.save(student15);

        Student student16 = new Student("Lestari", "12345", "221401016");
        student16.setSupervisor(teacher4);
        session.save(student16);

        Student student17 = new Student("Alya", "12345", "221401017");
        student17.setSupervisor(teacher2);
        session.save(student17);

        Student student18 = new Student("Oka", "12345", "221401018");
        student18.setSupervisor(teacher3);
        session.save(student18);

        Student student19 = new Student("Putri", "12345", "221401019");
        student19.setSupervisor(teacher4);
        session.save(student19);

        Student student20 = new Student("Sari", "12345", "221401020");
        student20.setSupervisor(teacher2);
        session.save(student20);

        // matkul
        Course course1 = new Course("Algoritma Pemrograman", "ILK010101", 3);
        session.save(course1);

        Course course2 = new Course("Pemrograman Berorientasi Objek", "ILK020202", 3);
        session.save(course2);

        Course course3 = new Course("Analisis dan Desain Perangkat Lunak", "ILK030303", 3);
        session.save(course3);

        Course course4 = new Course("Jaringan Komputer", "ILK040404", 3);
        session.save(course4);


        //kelas
        //kelas
        Class class1 = new Class("Algoritma Pemrograman");
        class1.getTeachers().add(teacher4);
        class1.getCourses().add(course1);
        class1.getCourses().add(course3);
        class1.getStudents().add(student1);
        class1.getStudents().add(student2);
        class1.getStudents().add(student3);
        class1.getStudents().add(student4);
        class1.getStudents().add(student5);
        session.save(class1);

        Class class2 = new Class("Pemrograman Berorientasi Objek");
        class2.getTeachers().add(teacher2);
        class2.getCourses().add(course3);
        class2.getCourses().add(course4);
        class2.getStudents().add(student6);
        class2.getStudents().add(student7);
        class2.getStudents().add(student8);
        class2.getStudents().add(student9);
        class1.getStudents().add(student10);
        session.save(class2);

        Class class3 = new Class("Analisis dan Desain Perangkat Lunak");
        class2.getTeachers().add(teacher3);
        class3.getCourses().add(course4);
        class3.getStudents().add(student11);
        class3.getStudents().add(student12);
        class3.getStudents().add(student13);
        class3.getStudents().add(student14);
        class1.getStudents().add(student10);
        session.save(class3);

        Class class4 = new Class("Jaringan Komputer");
        class2.getTeachers().add(teacher1);
        class4.getCourses().add(course1);
        class4.getCourses().add(course2);
        class4.getStudents().add(student16);
        class4.getStudents().add(student17);
        class4.getStudents().add(student18);
        class1.getStudents().add(student19);
        class1.getStudents().add(student20);
        session.save(class4);

        //nilai
        Score score1 = new Score(student1, class1, course1, 85);
        student1.getScores().add(score1);
        course1.getScores().add(score1);
        session.save(score1);

        Score score2 = new Score(student1, class1, course3, 90);
        student1.getScores().add(score2);
        course3.getScores().add(score2);
        session.save(score2);

        Score score3 = new Score(student2, class1, course1, 78);
        student2.getScores().add(score3);
        course1.getScores().add(score3);
        session.save(score3);

        Score score4 = new Score(student2, class1, course3, 83);
        student2.getScores().add(score4);
        course3.getScores().add(score4);
        session.save(score4);

        Score score5 = new Score(student3, class1, course1, 92);
        student3.getScores().add(score5);
        course1.getScores().add(score5);
        session.save(score5);

        Score score6 = new Score(student3, class1, course3, 88);
        student3.getScores().add(score6);
        course3.getScores().add(score6);
        session.save(score6);

        Score score7 = new Score(student4, class1, course1, 76);
        student4.getScores().add(score7);
        course1.getScores().add(score7);
        session.save(score7);

        Score score8 = new Score(student4, class1, course3, 81);
        student4.getScores().add(score8);
        course3.getScores().add(score8);
        session.save(score8);

        Score score9 = new Score(student5, class1, course1, 88);
        student5.getScores().add(score9);
        course1.getScores().add(score9);
        session.save(score9);

        Score score10 = new Score(student5, class1, course3, 84);
        student5.getScores().add(score10);
        course3.getScores().add(score10);
        session.save(score10);

        Score score11 = new Score(student10, class1, course1, 91);
        student10.getScores().add(score11);
        course1.getScores().add(score11);
        session.save(score11);

        Score score12 = new Score(student10, class1, course3, 87);
        student10.getScores().add(score12);
        course3.getScores().add(score12);
        session.save(score12);

        // Create and save scores for each student in class2
        Score score13 = new Score(student6, class2, course3, 88);
        student6.getScores().add(score13);
        course3.getScores().add(score13);
        session.save(score13);

        Score score14 = new Score(student6, class2, course4, 91);
        student6.getScores().add(score14);
        course4.getScores().add(score14);
        session.save(score14);

        Score score15 = new Score(student7, class2, course3, 85);
        student7.getScores().add(score15);
        course3.getScores().add(score15);
        session.save(score15);

        Score score16 = new Score(student7, class2, course4, 87);
        student7.getScores().add(score16);
        course4.getScores().add(score16);
        session.save(score16);

        Score score17 = new Score(student8, class2, course3, 89);
        student8.getScores().add(score17);
        course3.getScores().add(score17);
        session.save(score17);

        Score score18 = new Score(student8, class2, course4, 93);
        student8.getScores().add(score18);
        course4.getScores().add(score18);
        session.save(score18);

        Score score19 = new Score(student9, class2, course3, 80);
        student9.getScores().add(score19);
        course3.getScores().add(score19);
        session.save(score19);

        Score score20 = new Score(student9, class2, course4, 82);
        student9.getScores().add(score20);
        course4.getScores().add(score20);
        session.save(score20);

// Create and save scores for each student in class3
        Score score21 = new Score(student11, class3, course4, 77);
        student11.getScores().add(score21);
        course4.getScores().add(score21);
        session.save(score21);

        Score score22 = new Score(student12, class3, course4, 84);
        student12.getScores().add(score22);
        course4.getScores().add(score22);
        session.save(score22);

        Score score23 = new Score(student13, class3, course4, 79);
        student13.getScores().add(score23);
        course4.getScores().add(score23);
        session.save(score23);

        Score score24 = new Score(student14, class3, course4, 88);
        student14.getScores().add(score24);
        course4.getScores().add(score24);
        session.save(score24);

        Score score25 = new Score(student10, class3, course4, 86);
        student10.getScores().add(score25);
        course4.getScores().add(score25);
        session.save(score25);

        // Create and save scores for each student in class4
        Score score26 = new Score(student16, class4, course1, 90);
        student16.getScores().add(score26);
        course1.getScores().add(score26);
        session.save(score26);

        Score score27 = new Score(student16, class4, course2, 85);
        student16.getScores().add(score27);
        course2.getScores().add(score27);
        session.save(score27);

        Score score28 = new Score(student17, class4, course1, 78);
        student17.getScores().add(score28);
        course1.getScores().add(score28);
        session.save(score28);

        Score score29 = new Score(student17, class4, course2, 82);
        student17.getScores().add(score29);
        course2.getScores().add(score29);
        session.save(score29);

        Score score30 = new Score(student18, class4, course1, 88);
        student18.getScores().add(score30);
        course1.getScores().add(score30);
        session.save(score30);

        Score score31 = new Score(student18, class4, course2, 86);
        student18.getScores().add(score31);
        course2.getScores().add(score31);
        session.save(score31);

        Score score32 = new Score(student19, class4, course1, 80);
        student19.getScores().add(score32);
        course1.getScores().add(score32);
        session.save(score32);

        Score score33 = new Score(student19, class4, course2, 83);
        student19.getScores().add(score33);
        course2.getScores().add(score33);
        session.save(score33);

        Score score34 = new Score(student20, class4, course1, 87);
        student20.getScores().add(score34);
        course1.getScores().add(score34);
        session.save(score34);

        Score score35 = new Score(student20, class4, course2, 90);
        student20.getScores().add(score35);
        course2.getScores().add(score35);
        session.save(score35);

        //meeting
        Meeting meeting1 = new Meeting("p1 pbo", "penerapan javafx dan jframe dalam aplikasi", "ouy-wegr-wws", LocalDateTime.of(2024, 6, 16, 10, 30));
        meeting1.setClass(class1);
        meeting1.setCourse(course1);
        meeting1.setTeacher(teacher1);
        meeting1.getAttandee().add(student1);
        meeting1.getAttandee().add(student2);

        Meeting meeting2 = new Meeting("p2 pbo", "penerapan javafx dan jframe dalam aplikasi", "ouy-wegr-wws", LocalDateTime.of(2024, 6, 16, 10, 30));
        meeting2.setClass(class1);
        meeting2.setCourse(course1);
        meeting2.setTeacher(teacher1);
        meeting2.getAttandee().add(student1);
        meeting2.getAttandee().add(student2);

        Meeting meeting3 = new Meeting("p3 pbo", "penerapan javafx dan jframe dalam aplikasi", "ouy-wegr-wws", LocalDateTime.of(2024, 6, 16, 10, 30));
        meeting3.setClass(class2);
        meeting3.setCourse(course1);
        meeting3.setTeacher(teacher1);
        meeting3.getAttandee().add(student1);
        meeting3.getAttandee().add(student2);

        Meeting meeting4 = new Meeting("p4 pbo", "penerapan javafx dan jframe dalam aplikasi", "ouy-wegr-wws", LocalDateTime.of(2024, 6, 16, 10, 30));
        meeting4.setClass(class2);
        meeting4.setCourse(course1);
        meeting4.setTeacher(teacher1);
        meeting4.getAttandee().add(student1);
        meeting4.getAttandee().add(student2);

        Meeting meeting5 = new Meeting("p5 pbo", "penerapan javafx dan jframe dalam aplikasi", "ouy-wegr-wws", LocalDateTime.of(2024, 6, 16, 10, 30));
        meeting5.setClass(class3);
        meeting5.setCourse(course1);
        meeting5.setTeacher(teacher1);
        meeting5.getAttandee().add(student1);
        meeting5.getAttandee().add(student2);

        Meeting meeting6 = new Meeting("p6 pbo", "penerapan javafx dan jframe dalam aplikasi", "ouy-wegr-wws", LocalDateTime.of(2024, 6, 16, 10, 30));
        meeting6.setClass(class3);
        meeting6.setCourse(course1);
        meeting6.setTeacher(teacher1);
        meeting6.getAttandee().add(student1);
        meeting6.getAttandee().add(student2);

        // assignment
        Assignment assignment1 = new Assignment("tugas javafxx", "buatlah sebuah aplikasi menggunakan javafx", LocalDateTime.of(2024, 6, 16, 10, 30));
        assignment1.setClass(class1);
        assignment1.setCourse(course1);
        assignment1.setTeacher(teacher1);
        assignment1.getAsignee().add(student1);

        Assignment assignment2 = new Assignment("tugas javafxx", "buatlah sebuah aplikasi menggunakan javafx", LocalDateTime.of(2024, 6, 16, 10, 30));
        assignment2.setClass(class2);
        assignment2.setCourse(course1);
        assignment2.setTeacher(teacher1);
        assignment2.getAsignee().add(student1);

        Assignment assignment3 = new Assignment("tugas javafxx", "buatlah sebuah aplikasi menggunakan javafx", LocalDateTime.of(2024, 6, 16, 10, 30));
        assignment3.setClass(class3);
        assignment3.setCourse(course1);
        assignment3.setTeacher(teacher1);
        assignment3.getAsignee().add(student1);

        Assignment assignment4 = new Assignment("tugas javafxx", "buatlah sebuah aplikasi menggunakan javafx", LocalDateTime.of(2024, 6, 16, 10, 30));
        assignment4.setClass(class4);
        assignment4.setCourse(course1);
        assignment4.setTeacher(teacher1);
        assignment4.getAsignee().add(student1);

        Assignment assignment5 = new Assignment("tugas javafxx", "buatlah sebuah aplikasi menggunakan javafx", LocalDateTime.of(2024, 6, 16, 10, 30));
        assignment5.setClass(class4);
        assignment5.setCourse(course1);
        assignment5.setTeacher(teacher1);
        assignment5.getAsignee().add(student1);

        Assignment assignment6 = new Assignment("tugas javafxx", "buatlah sebuah aplikasi menggunakan javafx", LocalDateTime.of(2024, 6, 16, 10, 30));
        assignment6.setClass(class4);
        assignment6.setCourse(course1);
        assignment6.setTeacher(teacher1);
        assignment6.getAsignee().add(student1);

        session.save(meeting1);
        session.save(meeting2);
        session.save(meeting3);
        session.save(meeting4);
        session.save(meeting5);
        session.save(meeting6);
        session.save(assignment1);
        session.save(assignment2);
        session.save(assignment3);
        session.save(assignment4);
        session.save(assignment5);
        session.save(assignment6);

        session.getTransaction().commit();
        session.close();
        sessionFactory.close();
    }
}
