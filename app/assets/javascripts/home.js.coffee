jQuery ->
  $('#new_song').fileupload
    dataType: "script"
    add: (e, data) ->
      types = /(\.|\/)(mp3|wma|ogg|aac)$/i
      file = data.files[0]
      if types.test(file.type) || types.test(file.name)
        data.context = $(tmpl("template-upload", file))
        $('#new_song').append(data.context)
        data.submit()
      else
        alert("#{file.name} is not a mp3, wma, ogg or aac sound file.")
    progress: (e, data) ->
      if data.context
        progress = parseInt(data.loaded / data.total * 100, 10)
        data.context.find('.bar').css('width', progress + '%')