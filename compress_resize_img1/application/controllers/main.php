<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 class Main extends CI_Controller {  
function image_upload()  
      {  
           $data['title'] = "Upload Image using Ajax JQuery in CodeIgniter";  
           $this->load->model('main_model');  
           $data['image_data'] = $this->main_model->fetch_image();  
           $this->load->view('image_upload', $data);  
      }  
      function ajax_upload()  
      {  
           if(isset($_FILES["image_file"]["name"]))  
           {  
                $config['upload_path'] = './upload/';  
                $config['allowed_types'] = 'jpg|jpeg|png|gif';  
                $this->load->library('upload', $config);  
                if(!$this->upload->do_upload('image_file'))  
                {  
                     echo $this->upload->display_errors();  
                }  
                else  
                {  
                     $data = $this->upload->data();  
                     $config['image_library'] = 'gd2';  
                     $config['source_image'] = './upload/'.$data["file_name"];  
                     $config['create_thumb'] = FALSE;  
                     $config['maintain_ratio'] = FALSE;  
                     $config['quality'] = '60%';  
                     $config['width'] = 200;  
                     $config['height'] = 200;  
                     $config['new_image'] = './upload/'.$data["file_name"];  
                     $this->load->library('image_lib', $config);  
                     $this->image_lib->resize();  
                     $this->load->model('main_model');  
                     $image_data = array(  
                          'name'          =>     $data["file_name"]  
                          );  
                     $this->main_model->insert_image($image_data);  
                     echo $this->main_model->fetch_image();  
                     //echo '<img src="'.base_url().'upload/'.$data["file_name"].'" width="300" height="225" class="img-thumbnail" />';  
                }  
           }  
      } 
	
	  }
	  ?>
	  