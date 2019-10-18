package Labsession4;

import java.util.ArrayList;

public class ClassRoom {
    public String TenPhong;
    public String ViTri;
    public ArrayList<User> dsUser;

    public String getTenPhong() {
        return TenPhong;
    }

    public void setTenPhong(String tenPhong) {
        TenPhong = tenPhong;
    }

    public String getViTri() {
        return ViTri;
    }

    public void setViTri(String viTri) {
        ViTri = viTri;
    }

    public ArrayList<User> getDsUser() {
        return dsUser;
    }

    public void setDsUser(ArrayList<User> dsUser) {
        this.dsUser = dsUser;
    }

    public ClassRoom(){
        dsUser = new ArrayList<>();
    }
    public void themUser(User a){  //them nguoi dung
        this.dsUser.add(a);
    }
    public void xoaUser(User a){ //xóa người dùng
        this.dsUser.remove(a);
    }
    public  void showInfo(){
        System.out.println("Ten phong:" +this.getTenPhong());
        System.out.println("vi tri :"+this.getViTri());


        for (User a :this.dsUser){
            System.out.println(a.getTen());
            System.out.println(a.getTuoi());
            System.out.println(a.getCmnd());
    }

    }
}
