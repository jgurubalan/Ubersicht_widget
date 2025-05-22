command: "echo ''"
refreshFrequency: 300000  # every 5 minutes (in milliseconds)

render: ->
  timestamp = new Date().getTime()
  """
  <div class="solar-widget">
    <img src="https://www.hamqsl.com/solar101vhf.php?#{timestamp}" class="solar-img" />
  </div>
  """

style: """
  .solar-widget {
    position: absolute;
    top: 25px;
    left: 25px;
    z-index: 1;
  }

  .solar-img {
    width: 400px;
    height: 150px;
    border: none;
  }
"""
