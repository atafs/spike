# post '/sendmessage.:format' => sub {
#     my $remote_addr = request->remote_address;
#     my $in_params   = params;
#     TRACE && $logger->debug_dumper( { 'In /sendemail: ' => $in_params } );
#
#     my $intercom_dao = IntercomDAO->new(
#         {
#             base_url => config->{intercom_url};
#             username => config->{intercom_app_id};,
#             password => config->{intercom_api_key};
#         }
#     );
#
#     my( $result, $error ) = $intercom_dao->create_contact( $in_params->{contact_name}, $in_params->{contact_email} );
#
#     my $id = $result->{id};
#     $log->debug("id [$id]");
#
#     my $message_body = $in_params->{contact_message};
#     my( $result, $error ) = $intercom_dao->create_message( $id, $message_body );
#     if($error) {
#         $log->debug("Failed to send intercom messages [$err]");
#         return;
#     }
#     TRACE && $logger->debug_dumper( { 'In /sendmessage: ' => $result } );
#   }
#
#   post '/updatesite/:site_id.:format' => sub {
#     my $user_id      = session('user_id');
#     my $site_name    = params->{siteName};
#     my $site_address = encode_entities( params->{siteAddress} );
#     my $site_id      = params->{site_id};
#
#     if( !$user_id ) {
#         return {
#             valid     => 0,
#             condition => 'no session details'
#         };
#     }
#
#     my $url    = '_api/site';
#     my $method = 'updateSiteDetails';
#     my $params = [ $site_id, $user_id, $site_name, $site_address ];
#     my( $data, $err ) = $common_dao->api_call(
#         url    => $url,
#         method => $method,
#         params => $params
#     );
#
#     if($err) {
#         return status_bad_gateway('api not available')
#           if $err->is_bad_gateway;
#         return {
#             valid => 0,
#             error => { code => $err->code, msg => $err->msg }
#         };
#     }
#     return { valid => 1 };
#   };
