@extends('adminmaster')

@section('content')

		<div class="container">
			<div id="main-content">
				<!-- Form elements -->
				<div class="row col-md-12">
					<div class="panel panel-archon">
						<div class="panel-heading">
							<h3 class="panel-title">
								Manage Buyers
								<span class="pull-right">
									<a  href="#" class="panel-minimize"><i class="icon-chevron-up"></i></a>
								</span>
							</h3>
						</div>

						<div class="panel-body">
							<div class="row">
								<div class="col-md-12 support-tickets">
									<table class="table table-bordered table-hover table-condensed">
										<thead>
											<tr>
												<th class="icon text-center" width="10%">id</th>
												<th class="icon text-center" width="70%">Buyer's Name</th>
												<th class="icon text-center" width="20%">Actions</th>
											</tr>
										</thead>
										<tbody>
											@foreach($users as $user)
												@if($user->user_types_id == "2")
													<tr>
														<td class="icon text-center">{{ $user->id}}</td>
														@if($user->user_statuses_id == "2")
															<td class="description icon text-center" >{{ $user->username}} ({{$user->firstname}} {{$user->lastname}}) <i class="icon-ok-sign text-info"></i></td>
														@else
															<td class="description icon text-center" >{{ $user->username}} ({{$user->firstname}} {{$user->lastname}})</td>
														@endif
														<td class="icon text-center">
															<form role="form" class="form-horizontal" action="/buyers" method="POST" enctype= "multipart/form-data">
															<input type="hidden" name="_method" value="PUT" />
															<input type="hidden" name="_token" value="{{ csrf_token() }}">
															<input type="hidden" name="id" value="{{$user->id}}" />
																@if($user->user_statuses_id == "2")
																	<a href="{{ URL::to('/profile/' . $user->id) }}" class="btn btn-warning margin-button"><i class="icon-eye-open"></i></a>
																	<button type="" class="btn btn-danger margin-button"><i class="icon-trash"></i></button>
																@else
																	<button type="submit" class="btn btn-success margin-button"><i class="icon-ok"></i></button>
																	<a href="{{ URL::to('/profile/' . $user->id) }}" class="btn btn-warning margin-button"><i class="icon-eye-open"></i></a>
																	<button type="" class="btn btn-danger margin-button"><i class="icon-trash"></i></button>
																@endif
															</form>
														</td>
													</tr>
												@endif
											@endforeach
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
				
@stop