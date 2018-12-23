<table class="table table-responsive" id="categoriesProducts-table">
    <thead>
        <tr>
            <th>Title</th>
         <th>Single Photo</th>

             <th colspan="3">Action</th>
			 		             <th>subcategory</th>

        </tr>
    </thead>
    <tbody>
    @foreach($categoriesProducts as $categoriesProducts_val)
	<?PHP 	if($categoriesProducts_val->parentid ==0 ){ ?>
        <tr>
            <td>{!! $categoriesProducts_val->title !!}</td>
			 
			 
  
                       <td>     <img src="{{ URL::to('/').'/images/'. $categoriesProducts_val->single_photo }}"  width="50" height="50">  </td>
            


 
			 
			 <td>


                {!! Form::open(['route' => ['categoriesProducts.destroy', $categoriesProducts_val->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                     <a href="{!! route('categoriesProducts.edit', [$categoriesProducts_val->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
@foreach($categoriesProducts_val->children  as $categoriesProducts_children)


				
				
				
				
				 <td style="     border: 1px solid; "> 
				 
				 
				  {!! Form::open(['route' => ['categoriesProducts.destroy', $categoriesProducts_children->id], 'method' => 'delete']) !!}
                
                     {!! Form::button('<i style= "color: #000000;" 
					 class="glyphicon glyphicon-trash"></i>', 
					 ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
               
                {!! Form::close() !!}
				
				
				<a href="{{ URL::to('/').'/admin/categoriesProducts/'. $categoriesProducts_children->id.'/edit/'}}"  >
				 
							{!!   $categoriesProducts_children->title  !!}

				 </a>
</td>
			 @endforeach
        </tr>
	<?PHP 	}?>

    @endforeach
    </tbody>
</table>