JSON_STRING=$( jq -n \
              --arg client_id "$PACKERCLIENTID" \
              --arg subscription_id "$SUBSCRIPTIONID" \
              --arg build_resource_group_name "$RESOURCEGROUPNAME" \
              --arg managed_image_resource_group_name "$RESOURCEGROUPNAME" \
              --arg client_secret "$PACKERCLIENTSECRET" \
              '{client_id: $client_id, subscription_id: $subscription_id, build_resource_group_name: $build_resource_group_name}' )

echo $JSON_STRING