document.addEventListener("DOMContentLoaded", function() {
  var select = document.getElementById("interests");
  var options = select.options;
  var clickedOptions = [];

  select.addEventListener("mousedown", function(event) {
    event.preventDefault(); // Prevent text selection during drag

    var option = event.target;
    if (option.tagName === "OPTION") {
      var index = Array.from(options).indexOf(option);
      if (option.selected) {
        deselectOption(option, index);
      } else if (clickedOptions.length < 10) {
        selectOption(option, index);
      }
    }
  });

  function selectOption(option, index) {
    option.selected = true;
    option.style.backgroundColor = "grey";
    clickedOptions.push(index);
  }

  function deselectOption(option, index) {
    option.selected = false;
    option.style.backgroundColor = "";
    clickedOptions.splice(clickedOptions.indexOf(index), 1);
  }

  // Initialize the clicked options from the server response if needed
  var serverResponse = []; // Replace with actual server response
  serverResponse.forEach(function(index) {
    var option = options[index];
    if (option) {
      selectOption(option, index);
    }  
    
  });
  
});