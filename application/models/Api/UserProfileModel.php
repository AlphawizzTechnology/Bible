<?php

class UserProfileModel extends CI_Model { 
	public function __construct(){
    $this->response= array();
    $this->message = array();
  }

  public function getUserImage($id){
       $this->db->select("image");
       $this->db->from('user');
       $this->db->where('id',$id);
       return $this->db->get()->result();

  }

    public function updateImage($id){
       $this->db->select("image");
       $this->db->from('user');
       $this->db->where('id',$id);
       $image =  $this->db->get()->result();
       $image_ar = $image[0]->image;
       $image_imp =  explode("/", $image_ar);
       $imges = $image_imp[1];
       

       return $imges ;
  }

  public function checkPhone($phone_number,$id){
      $this->db->select("*");
      $this->db->from('user');
      $this->db->where('phone_number',$phone_number);
      $this->db->where('id !=', $id);
      $count = $this->db->get()->num_rows();

      if($count > 0){
        return true;
      }
      else {
        return false;
      }
  }

  public function checkEmail($email,$id){
      $this->db->select("*");
      $this->db->from('user');
      $this->db->where('email',$email);
      $this->db->where('id !=', $id);
      $count = $this->db->get()->num_rows();

      if($count > 0){
        return true;
      }
      else {
        return false;
      }
  }


  public function updateProfile($data,$id){
    $this->db->where('id',$id);
    $this->db->update('user',$data);
    return true;
  }
}