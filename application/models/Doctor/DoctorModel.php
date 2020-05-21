<?php

class DoctorModel extends CI_Model {
    public function AddPost($data){
        $this->db->insert('post',$data);
        return true;
    }

    public function isEmailAvailable($email){
     $this->db->select('*');
     $this->db->from('Doctors');
     $this->db->where('email',$email);
     $data = $this->db->get()->result();
     if(!empty($data)){
       return true;
     }
     else {
       return false;
     }
     
    }


    public function getAllDocters(){
        $this->db->select('*');
        $this->db->from('post');
        $data = $this->db->get()->result();
        
        return $data;  
    }
 
    public function getDocterById($id){
      $this->db->select('*');
      $this->db->from('post');
      $this->db->where('id',$id);
      $data = $this->db->get()->row();

      return $data;
    }

    public function updateDocter($data,$id)
    {
       $this->db->where('id',$id);
       $this->db->update('post',$data);
       return true;
    }

    public function hospital_list(){
      $this->db->select("*");
      $this->db->from('Hospital');
      $data = $this->db->get()->result();
      
      return $data;
    }

    public function departments(){
      $this->db->select("*");
      $this->db->from('Department');
      return $this->db->get()->result();
    }

    

    public function deleteDocterById($id){
      $this->db->where('id',$id);
    $this->db->delete('post');
    

    }

}