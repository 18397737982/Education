/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	
	config.image_previewText=' '; //预览区域显示内容
	config.filebrowserImageUploadUrl= "ImgUpload.action"; //待会要上传的action或servlet
	config.smiley_columns =8;
	
	
	/*config.toolbar_Full = 
	    [ 
	        ['Source','-','Preview','-','Templates'], 
	        ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'], 
	      
	        ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'], 
	        '/', 
	        ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'], 
	         
	        ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'], 
	        ['Link','Unlink','Anchor'], 
	          ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'], 
	        '/', 
	        ['Styles','Format','Font','FontSize'], 
	        ['TextColor','BGColor'], 
	        ['Maximize', 'ShowBlocks','-','About'] 
	    ];*/
	 config.toolbar =  [['Font','Bold','Italic','Underline','FontSize','NumberedList','BulletedList','Outdent','Indent','JustifyLeft',

	                     'JustifyCenter','JustifyRight','Link','Unlink','TextColor','BGColor','Image','Smiley','Table',

	                     'RemoveFormat','syntaxhighlight' ]];

	               
	
	 //config.smiley_path = '/ckeditor01/plugins/smiley/images/';
	/*config.removeButtons = 'Cut,Copy,Paste,Undo,Redo,Anchor,Underline,Strike,Subscript,Superscript';*/

	config.removeDialogTabs = 'image:advanced;link:advanced';
	config.baseHref = '';//使用绝对路径和相对路径
	config.ignoreEmptyParagraph = true
};

