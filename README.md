# GRAPE SAMPLE



curl http://localhost:8080/api/v1/messages/1

curl http://localhost:8080/api/v1/messages

curl http://localhost:8080/api/v1/messages -X POST -H "Content-Type: application/json" -d '{"title": "t", "content":"c"}'

curl http://localhost:8080/api/v1/messages/1  -X PUT -H "Content-Type: application/json" -d '{"id": "t"}'

curl http://localhost:8080/api/v1/messages/1  -X DELETE -H "Content-Type: application/json" -d '{"id": "t"}'

curl http://localhost:8080/api/v1/messages/complex  -X POST -H "Content-Type: application/json" -d '{"xxx": {"messages":["title"]}}'

curl http://localhost:8080/api/v1/messages/complex  -X POST -H "Content-Type: application/json" -d '{"xxx": {"messages":[{"title":"title","content":"content"}]}}'
