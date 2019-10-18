package Labsession3;

import java.util.Scanner;

public class PhanSo {

    public int TuSo;
    public int MauSo;

    public PhanSo() {

    }

    public PhanSo(int Tuso, int MauSo) {

    }

    public int getTuSo() {
        return TuSo;
    }

    public void setTuSo(int tuSo) {
        TuSo = tuSo;
    }

    public int getMauSo() {
        return MauSo;
    }

    public void setMauSo(int mauSo) {
        MauSo = mauSo;
    }

    public void inputInfo() {
        Scanner sc = new Scanner(System.in);
        System.out.println("nhap tu so :");
        setTuSo(sc.nextInt());
        System.out.println("nhap mau so:");
        setMauSo(sc.nextInt());


        while (getMauSo() == 0) {
            System.out.println("nhap lai mau so :");
            setMauSo(sc.nextInt());
        }

    }

    public void InPhanSo() {
        System.out.println("phân số là :" + getTuSo() + "/" + getMauSo());
    }

    public int timUSCLN(int getTuSo, int getMauSo) {
        while (getTuSo != getMauSo) {
            if (getTuSo > getMauSo) {
                getTuSo -= getMauSo;
            } else {
                getMauSo -= getTuSo;
            }
        }
        return getTuSo;
    }

    public void toiGianPhanSo() {
        int i = timUSCLN(this.getTuSo(), this.getMauSo());
        this.setTuSo(this.getTuSo() / i);
        this.setMauSo(this.getMauSo() / i);
        System.out.println("phân số rút gọn :" + this.getTuSo() + "/" + this.getMauSo());
    }

    public void NghichDao() {
        if (getTuSo() != 0) {
            int tmp = getTuSo();
            setTuSo(getTuSo());
            setMauSo(tmp);
            return;
        }
        System.out.println("không thể nghịch đảo tử số = 0");
        System.out.println("phân số nghịch đảo :");

    }
}