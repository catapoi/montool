#Webhook URL  https://hooks.slack.com/services/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
import requests
import json

web_hook_url =  'https://hooks.slack.com/services/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'
slack_msg = {'text':'Send alert to Slack from python - DNS_check project Maimute'}
requests.post(web_hook_url,data=json.dumps(slack_msg))
