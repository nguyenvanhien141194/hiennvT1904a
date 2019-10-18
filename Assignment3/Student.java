package Assignment3;

import java.util.Scanner;

public class Student {

    public String MaSoSV ;
    public double DiemTrungBinh;
    public int Tuoi ;
    public  String Lop;


    public  Student(){

    }

    public Student (String IDSV,double point,int Age,String Class){

    }

    public String getMaSoSV() {
        return MaSoSV;
    }

    public void setMaSoSV(String maSoSV) {
        while (maSoSV.length()!=8){
            System.out.println("yêu cầu nhập lại mã số sinh viên chứa đủ 8 kí tự :");
            Scanner sc = new Scanner(System.in);
            maSoSV = sc.nextLine();
        }
        MaSoSV = maSoSV;
    }

    public double getDiemTrungBinh() {
        return DiemTrungBinh;
    }

    public void setDiemTrungBinh(double diemTrungBinh) {
        while (diemTrungBinh<0.0 ||diemTrungBinh>10.0 ){
            System.out.println("yêu cầu nhập lại điểm trung bình từ 0.0 đến 10.0");
            Scanner sc = new Scanner(System.in);
            diemTrungBinh=sc.nextDouble();
        }
        DiemTrungBinh = diemTrungBinh;
    }

    public int getTuoi() {
        return Tuoi;
    }

    public void setTuoi(int tuoi) {
        while (tuoi<18){
            System.out.println("yêu cầu nhập lại tuổi >=18");
            Scanner sc = new Scanner(System.in);
            tuoi = sc.nextInt();
        }
        Tuoi = tuoi;
    }

    public String getLop() {
        return Lop;
    }

    public void setLop(String lop) {
        while (!(lop.startsWith("A")||lop.startsWith("C"))){
            System.out.println("yêu cầu nhập lại");
            Scanner sc= new Scanner(System.in);
            lop = sc.nextLine();
        }
        Lop = lop;
    }

    public  void InputInfo(){
        System.out.println("nhập thông tin sinh viên :");
        Scanner sc = new Scanner(System.in);
        System.out.println("nhâp mã số sv :");
        setMaSoSV(sc.nextLine());
        System.out.println("nhập điểm trung bình :");
        setDiemTrungBinh(sc.nextDouble());
        System.out.println("nhập tuổi :");
        setTuoi(sc.nextInt());
        System.out.println("nhập lớp :");
        setLop(sc.nextLine());

    }

    public void ShowInfo(){
        System.out.println("thông tin của sinh viên là :");
        System.out.println("mã số sinh viên là :" +MaSoSV);
        System.out.println("điểm của sinh viên là :"+DiemTrungBinh);
        System.out.println("tuổi của sinh viên là :"+Tuoi);
        System.out.println("lớp :"+Lop);
    }


    public void XetHocBong(){
        if (DiemTrungBinh>8){
            System.out.println("sinh viên đạt học bổng");
        }else {
            System.out.println("sinh viên không đạt học bổng");
        }
    }

}
