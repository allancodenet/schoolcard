@streams =Stream.find(params[:id])

json.array! @streams.substreams