@extends('usermaster')

@section('content')

<div class="container">

		<!-- Main content starts here-->

			<div id="main-content">
				<!-- Form elements -->
				<div class="row">
						<div class="panel panel-archon">
							<div class="panel-heading">
								<h3 class="panel-title">
									List of Buyers
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
												<tr><th width="80%" colspan="2" >Buyers</th><th  width="20%" >Latest Transaction</th></tr>
											</thead>
											<tbody>
											@foreach ($users as $user)
												@if($user->user_types_id == "2")
												<tr>
													@if($user->user_statuses_id == "2")
														<td class="icon text-center"><i class="icon-ok text-info"></i></td>
													@else
														<td class="icon text-center"><i class="icon-bookmark text-info"></i></td>
													@endif
													<td class="description" >
													<a href="{{ URL::to('/profile/' . $user->id) }}">{{ $user->username }} ({{$user->firstname}} {{$user->lastname}})</a>
													</td>
													<td class="time"><a href="#">Jan 28,2013 12:13 AM</a></td>
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

			</div><!-- /Main Content  @7 -->
		</div>

@endsection