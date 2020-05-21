<?php

class LoginApiModel extends CI_Model {
    public function __construct(){     
      $this->table_name = '';
      $this->logged_in_with='';
      $this->response=array();
    }


    public function getUserData($Id){
      $this->table_name = 'user';
      $this->db->select("*");
      $this->db->from($this->table_name);
      $this->db->where('id',$Id);
      $data = $this->db->get()->result();
      
      if($data){
        return $data;
      }else{
        return array( 
        );
      }
    }


    public function getPostData(){      
      $this->table_name = 'post';
      $this->db->select("*");
      $this->db->from($this->table_name);
      $data = $this->db->get()->result();
      if($data){
        return $data;
      }else{
        return array( 
        );
      }
    }


    public function getContentData($Id){      
      $this->table_name = 'content';
      $this->db->select("*");
      $this->db->from($this->table_name);
      $this->db->where('user_id',$Id);
      $data = $this->db->get()->result();
      if($data){
        return $data;
      }else{
        return array(
        );
      }
    }


    public function getSettingData($Id){      
      $this->table_name = 'setting';
      $this->db->select("*");
      $this->db->from($this->table_name);
      $this->db->where('user_id',$Id);
      $data = $this->db->get()->result();
      if($data){
        return $data;
      }else{
        return array( 
        );
      }
    }

    public function getBookmarkData($Id){      
      $this->table_name = 'bookmark';
      $this->db->select("*");
      $this->db->from($this->table_name);
      $this->db->where('user_id',$Id);
      $data = $this->db->get()->result();
      if($data){
        return $data;
      }else{
        return array( 
        );
      }
    }

    public function getChapterData($Id){      
      $this->table_name = 'chapter';
      $this->db->select("*");
      $this->db->from($this->table_name);
      $this->db->where('user_id',$Id);
      $data = $this->db->get()->result();
      if($data){
        return $data;
      }else{
        return array( 
        );
      }
    }

    public function gethighlightsData($Id){      
      $this->table_name = 'Highlights';
      $this->db->select("*");
      $this->db->from($this->table_name);
      $this->db->where('user_id',$Id);
      $data = $this->db->get()->result();
      if($data){
        return $data;
      }else{
        return array( 
        );
      }
    }

    

    public function getRows($data,$login_type,$firebase_token){
     if($login_type == 1){
         $this->table_name = 'Doctors';
         $this->logged_in_with ='Doctor';
     }
     else {
       $this->table_name = 'user';
       $this->logged_in_with ='Patient';
     }

     $this->db->select("*");
     $this->db->from($this->table_name);
     $this->db->where('email',$data['email']);
     $data1 = $this->db->get()->row();
     
     (empty($data1))?$count=0:$count = count($data1);


     if($count > 0)
     {
      if($data['password'] == $data1->password)
      {

      $notification = array('firebase_token'=>$firebase_token);
      $this->db->where('id',$data1->id);
      $this->db->update($this->table_name,$notification);

      $this->response['status'] = 1;
      $this->response['message'] = 'Correct password';
      $this->response['data'] = $data1;
      $this->response['logged_as'] =$this->logged_in_with;   
      }
      else
      {
      $this->response['status'] = 0;
      $this->response['message'] = 'Incorrect Password';
      }
      
     }

     else 
     {
        $this->response['status'] = 1;
        $this->response['message'] = 'Email Not Registered';
     }
     return $this->response;
    }

    public function insert_patient($data){
        $this->db->insert('user',$data);
       if($this->db->affected_rows() >0) {
           $this->response['status'] = false;
           $this->response['message'] = 'Unable to insert';
           
       }
       else {
        $this->response['status'] = false;
        $this->response['message'] = 'Inserted successfully';
       }
       return $this->response;
    }


    public function insert_doctor($data){
        $this->db->insert('Doctors',$data);
       if($this->db->affected_rows() >0) {
           $this->response['status'] = false;
           $this->response['message'] = 'unable to insert';
           
       }
       else {
        $this->response['status'] = false;
        $this->response['message'] = 'inserted successfully';
       }
       return $this->response;
    }


    public function checkEmail($email,$slug, $social, $facebookID){
        if($slug == 1){
            $table = 'user';
        }
        else {
            $table = 'Doctors';
        }
        
        $this->db->select("*");
        $this->db->from($table);
        if($social == 2){
          $this->db->where('facebookID',$facebookID);
        }else{
          $this->db->where('email',$email);
        }
        $data = $this->db->get()->result();
        
        if(!empty($data)){
         if(count($data)>0){
          return true;
         }
         else {
             return false;
         }
        }
        else {
            return false;
        }

    }


    public function checkPhoneNumber($forget_type,$phone_number)
    {

      if($forget_type == 1)
      {
        $table = 'Doctors';
      }
      if($forget_type == 2) 
      {
        $table = 'user';
      }
     
      

      $this->db->select("*");
      $this->db->from($table);
      $this->db->where(array('phone_number'=>$phone_number));
      $count = $this->db->get()->num_rows();
      

      if($count > 0){
        return true;
      }
      else {
        return false;
      }
    }

    public function changePassword($phone_number,$password,$user_type)
    {
      if($user_type == 1){
        $table = 'Doctors';
      }
      else {
        $table = 'user';
      }
      $this->db->select("*");
      $this->db->from($table);
      $this->db->where('phone_number',$phone_number);
      $count = $this->db->get()->num_rows();
      
      if($count <= 0){
      return false;
      }
      else {
      $this->db->where('phone_number',$phone_number);
      $this->db->update($table, array('password'=>$password));
      
      return true;
      }
    }
    
    public function UpdateOtp($data){
        if($data['type'] == 1){
        $table = 'Doctors';
          }
          else {
            $table = 'user';
          }
        $this->db->where('phone_number',$data['Phone']);
        $this->db->update($table, array('otp'=>$data['otp']));
        return true;
    }

    public function checkContact($contact,$slug){
        if($slug == 1){
            $table = 'user';
        }
        else {
            $table = 'Doctors';
        }
        $this->db->select("*");
        $this->db->from($table);
        $this->db->where('phone_number',$contact);
        $data = $this->db->get()->result();
        if(!empty($data)){
         if(count($data)>0){
          return true;
         }
         else {
             return false;
         }
        }
        else {
            return false;
        }

    }
    
}