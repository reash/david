class EventsController < ApplicationController
  def index

      response.headers['Context-Type'} = 'text/event-stream'
      responde.headers['Last-Modified'] = Time.now.httpdate

      sse = SSE.new(response.stream, event: "message")

      sse.write({ message: 'Hello World'})

      sleep 2

      sse.write({ message: 'Hello World again'})

      sleep 2

      sse.write({ message: 'Hello World Three Times'})

      sleep 2

      sse.write({ message: 'I am fine'})


    ensure
      sse.close
  end
end
