curl -v -X PUT -H "Content-type: application/json" \
-d '{
      "services": [
        {
          "service_name": "test_00",
          "service_key": "<PAGERDUTY_SERVICE_KEY>"
        },
        {
          "service_name": "test_01",
          "service_key": "<PAGERDUTY_SERVICE_KEY>"
        }
      ],
      "subdomain": "my-pd",
      "schedules": ["https://my-pd.pagerduty.com/schedules#PCPYT4M", "https://my-pd.pagerduty.com/schedules#PKTPB7P"],
      "api_token": "<PAGERDUTY_TOKEN>"
  }' \
"https://app.datadoghq.com/api/v1/integration/pagerduty?api_key=${api_key}&application_key=${app_key}&run_check=true"

curl -v "https://app.datadoghq.com/api/v1/integration/pagerduty?api_key=${api_key}&application_key=${app_key}"

curl -v -X DELETE "https://app.datadoghq.com/api/v1/integration/pagerduty?api_key=${api_key}&application_key=${app_key}"