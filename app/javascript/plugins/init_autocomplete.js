import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('query');
  if (addressInput) {
    places({
      container: addressInput,
      templates: {
        value: function(suggestion) {
          return suggestion.name;
        }
      }
   });
  }
};

export { initAutocomplete };

