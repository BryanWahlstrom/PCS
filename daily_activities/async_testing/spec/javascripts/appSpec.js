describe("div", function(){
  it("changes color to green on delay when clicked", function(){
    $('div.classy').trigger('click');

    waitsFor(function(){
      return $('div').css('background-color') == 'rgb(0, 128, 0)';
    }, 'never changed', 150);
    runs (function(){
      expect($('div').css('background-color')).toBe('rgb(0, 128, 0)');
    });
  });
});