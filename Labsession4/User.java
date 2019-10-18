package Labsession4;

import java.util.Scanner;

public class User {
    public String ten;
    public int tuoi;
    public String cmnd;

    public User() {
    }

    public User(String ten, int tuoi, String cmnd) {

    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getTuoi() {
        return tuoi;
    }

    public void setTuoi(int tuoi) {
        this.tuoi = tuoi;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public void InputInfor() {
        Scanner sc = new Scanner(System.in);
        System.out.println("nhap ten");
        setTen(sc.nextLine());
        System.out.println("nhap tuoi");
        setTuoi(sc.nextInt());
        System.out.println("nhap so cmnn");
        setCmnd(sc.nextLine());


    }

    public void inthongtin() {
        System.out.println("tên" + ten);
        System.out.println("tuoi" + tuoi);
        System.out.println("cmnd" + cmnd);


    }
}
