JSON_STRING=$( jq -n \
              --arg client_id "$packerClientId \
              --arg subscription_id "$subscriptionId \
              --arg build_resource_group_name "$resourceGroupName" \
              --arg managed_image_resource_group_name "$resourceGroupName" \
              --arg client_secret "$packerClientSecret" \
              '{client_id: $client_id, subscription_id: $subscription_id, build_resource_group_name: $build_resource_group_name}' )

echo $JSON_STRING