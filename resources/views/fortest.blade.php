 <table class="table table-striped table-hover table-reflow">
         <tr> 
            <th ><strong> shop category id </strong></th>
            <th ><strong>| category title </strong></th>
        </tr>
        @foreach($categories as $category)
                <tr>                   
                    <td>  {{ $category->id }} <td>
                    <td>  {{ $category->TextTrans('title') }} <td>
                </tr>
        @endforeach
    </table>
    <style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;    
}
</style>