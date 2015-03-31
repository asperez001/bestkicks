@extends($mode)

@section('content')

<div id="main-content">
    <div class="row">
        <!-- /.row -->
        <br>

        @foreach($posts as $posts)        
            @foreach($users as $user)
            @if($user->id == $posts->users_id)
            <div class="col-md-5" style="border:15px solid #444444; border-radius: 4px">
                    <img class="imagesize" src="/images/userposts/{{$user->username}}/{{$posts->title}}/{{$posts->frontview}}" alt="">
            </div>
            @endif
            @endforeach
            <div class="col-md-4 detail-color">
                <h3>{{$posts->title}}</h3>
                <table>
                  <tbody>
                    <tr>
                      <td>Posted by: </td>
                      <td>
                        @foreach($users as $user)
                            @if($user->id == $posts->users_id)
                                {{$user->firstname}} {{$user->lastname}}
                            @endif
                        @endforeach
                      </td>
                    </tr>
                    <tr>
                      <td>Description: </td>
                      <td>{{$posts->description}}</td>
                    </tr>
                    <tr>
                      <td>Price: </td>
                      <td>{{$posts->price}}</td>
                    </tr>
                    <tr>
                      <td>Color: </td>
                      <td>
                        @foreach($colors as $color)
                            @if($color->id == $posts->colors_id)
                                {{$color->name}}
                            @endif
                        @endforeach
                      </td>
                    </tr>
                    <tr>
                      <td>Size: </td>
                      <td>
                        @foreach($sizes as $size)
                            @if($size->id == $posts->sizes_id)
                                {{$size->name}}
                            @endif
                        @endforeach
                      </td>
                    </tr>
                    <tr>
                      <td>Brand: </td>
                      <td>
                        @foreach($brands as $brand)
                            @if($brand->id == $posts->brands_id)
                                {{$brand->name}}
                            @endif
                        @endforeach
                    </td>
                    </tr>
                    <tr>
                      <td>Condition: </td>
                      <td>
                        @foreach($conditions as $condition)
                            @if($condition->id == $posts->conditions_id)
                                {{$condition->name}}/10
                            @endif
                        @endforeach
                      </td>
                    </tr>
                    <tr>
                      <td>Location: </td>
                      <td>
                        @foreach($locations as $location)
                            @if($location->id == $posts->locations_id)
                                {{$location->name}}
                            @endif
                        @endforeach
                      </td>
                    </tr>
                    <tr>
                      <td>Type: </td>
                      <td>
                        @foreach($types as $shoetype)
                            @if($shoetype->id == $posts->shoe_types_id)
                                {{$shoetype->name}}
                            @endif
                        @endforeach
                      </td>
                    </tr>
                    <tr>
                      <td>Date Created: </td>
                      <td>{{ date("F d, Y", strtotime($posts->created_at)) }}</td>
                    </tr>
                    <tr>
                      <td>Date Modified: </td>
                      <td>{{ date("F d, Y", strtotime($posts->updated_at)) }}</td>
                    </tr>
                  </tbody>
                </table>
                    <a class="btn btn-primary" href="{{ URL::to('/post/' . $posts->id) }}">View Post Details <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        <!-- /.row -->
        <div class="col-md-10"><br></div>
        @endforeach

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-11">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

@endsection