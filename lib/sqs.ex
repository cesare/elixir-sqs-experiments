alias ExAws.SQS

defmodule Sqs do
  def send(queue_name, message) do
    SQS.send_message(queue_name, message)
    |> ExAws.request
  end

  def receive(queue_name) do
    SQS.receive_message(queue_name, wait_time_seconds: 20)
    |> ExAws.request
  end

  def clear(queue_name) do
    SQS.purge_queue(queue_name) |> ExAws.request
  end
end
