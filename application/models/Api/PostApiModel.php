<?php

class PostApiModel extends CI_Model {
    public function __construct(){     
      $this->table_name = '';
      $this->logged_in_with='';
      $this->response=array();
    }

    public function getPost(){
      $this->db->select("*");
      $this->db->from('post');
      $data = $this->db->get()->result();
      return $data;
    }

    public function addHighlights($data){
       $a = (object)$data; 
       $result = array();
       foreach ($a as $key => $value) {
          $result['mId'] =  $value['mId'];
          $result['user_id'] =  $value['user_id'];
          $result['postId'] =  $value['postId'];
          $result['highlightText'] = $value['highlightText'];
          $result['isNew'] = $value['isNew'] == 0 ?'false':'true';
          $result['highlightColorCode'] = $value['highlightColorCode'];

          if(!empty($result)){
              $this->db->insert('Highlights',$result);
              $id = $this->db->insert_id();
              $result1 = array('id' => $id,'mId' => $value['mId'],'user_id' =>  $value['user_id'],'highlightText' => $value['highlightText'],'isNew' => $value['isNew'] == 0 ?'false':'true','highlightColorCode' => $value['highlightColorCode']);
              
          }
       }
       return $result1;
  
     }

    public function getHighlights($user_id){
      $this->db->select("*");
      $this->db->from('Highlights');
      $this->db->where('user_id',$user_id);
      $data = $this->db->get()->result();
      return $data;
    }

    public function addBookMark($data){
      $a = (object)$data; 
       $result = array();
       foreach ($a as $key => $value) {
        $result['mId'] =  $value['mId'];
        $result['user_id'] =  $value['user_id'];
        $result['postId'] =  $value['postId'];
        $result['bookmarkText'] = $value['bookmarkText'];
        $result['title'] = $value['title'];
        $result['create_at'] = $value['create_at'];
        $result['isNew'] = $value['isNew'];

        if(!empty($result)){
            $this->db->insert('bookmark',$result);
            $id = $this->db->insert_id();
            $result1 = array('id' => $id,'mId' => $value['mId'],'user_id' =>  $value['user_id'],'bookmarkText' => $value['bookmarkText'],'isNew' => $value['isNew'],'title'=> $value['title'],'create_at'=>$value['create_at']);
            return $result1;
        }
     }
    }


    public function addSettings($data){
  
        $this->db->insert('setting',$data);
        $id = $this->db->insert_id();
        return $id;
          
    }

    public function getSettings($user_id){
      $this->db->select("*");
      $this->db->from('setting');
      $this->db->where('user_id',$user_id);
      $data = $this->db->get()->result();
      if($data){
        return $data;
      }
      else{
        return false;
      }   
    }


    public function deleteHighlights($data){
      $highlightsArray = (object)$data; 
      $data_result = array();
      foreach ($highlightsArray as $key => $value) {
        $data_result[$key] = $value['mId'];
      
      }
      $IdData = implode(",",$data_result);
      
      if($IdData){        
        $this->db->where_in('mId', $IdData,FALSE);
        $this->db->delete('Highlights');
        return true;
      }
      else{
        return false;
      }

    }

    public function deleteBookMark($data){
      $highlightsArray = (object)$data; 
      $data_result = array();
      foreach ($highlightsArray as $key => $value) {
        $data_result[$key] = $value['mId'];
      
      }
      $IdData = implode(",",$data_result);
      
      if($IdData){        
        $this->db->where_in('mId', $IdData,FALSE);
        $this->db->delete('bookmark');
        return true;
      }
      else{
        return false;
      }
    }   
    
}