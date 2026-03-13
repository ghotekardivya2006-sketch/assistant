#!/bin/bash

API_KEY=$GEMINI_API_KEY

echo "🚀 AI DevOps Assistant Started"
echo "Type 'exit' to quit"

while true
do
    echo ""
    echo "Enter task for AI:"
    read PROMPT

    if [[ "$PROMPT" == "exit" ]]; then
        echo "👋 Exiting assistant..."
        break
    fi

    echo "🤖 Asking Gemini AI..."

    RESPONSE=$(curl -s \
      -H "Content-Type: application/json" \
      -X POST \
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key=$API_KEY" \
      -d "{
        \"contents\": [{
          \"parts\": [{
            \"text\": \"Convert this request into a single Linux command only: $PROMPT\"
          }]
        }]
      }")

    COMMAND=$(echo "$RESPONSE" | jq -r '.candidates[0].content.parts[0].text')

    if [[ -z "$COMMAND" || "$COMMAND" == "null" ]]; then
        echo "❌ AI failed to generate command"
        continue
    fi

    echo "💡 AI Suggested Command:"
    echo "$COMMAND"

    echo "⚡ Executing..."
    eval "$COMMAND"

done
#!/bin/bash

API_KEY=$GEMINI_API_KEY

echo "🚀 AI DevOps Assistant Started"
echo "Type 'exit' to quit"

while true
do
    echo ""
    echo "Enter task for AI:"
    read PROMPT

    if [[ "$PROMPT" == "exit" ]]; then
        echo "👋 Exiting assistant..."
        break
    fi

    echo "🤖 Asking Gemini AI..."

    RESPONSE=$(curl -s \
      -H "Content-Type: application/json" \
      -X POST \
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key=$API_KEY" \
      -d "{
        \"contents\": [{
          \"parts\": [{
            \"text\": \"Convert this request into a single Linux command only: $PROMPT\"
          }]
        }]
      }")

    COMMAND=$(echo "$RESPONSE" | jq -r '.candidates[0].content.parts[0].text')

    if [[ -z "$COMMAND" || "$COMMAND" == "null" ]]; then
        echo "❌ AI failed to generate command"
        continue
    fi

    echo "💡 AI Suggested Command:"
    echo "$COMMAND"

    echo "⚡ Executing..."
    eval "$COMMAND"

done
