$.fn.extend({
    print: function() {
        var frameName = 'printIframe';
        var doc = window.frames[frameName];
        if (!doc) {
            $('<iframe>').hide().attr('name', frameName).appendTo(document.body);
            doc = window.frames[frameName];
        }
        doc.document.body.innerHTML = this.html();
        doc.window.print();
        return this;
    }
});
 