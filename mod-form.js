/**
 * load form validation module
 * https://github.com/brandung/mod-form.git
 *
 * @require {loadModule}
 * @require {jquery-validation}
 */
$('form.validate').loadModule([
	Brandung.folderPath + 'libs/vendor/jquery-validation/dist/jquery.validate.min.js'
],
function () {
	Brandung.Plugins.validator($('form.validate'));
}, 'unique');	

/**
 * jquery-validator
 * http://jqueryvalidation.org/validate
 *
 * @param {object} selector
 */
Brandung.Plugins.validator = function(obj) {
	if(!obj.length) return;

	$.validator.addClassRules("required-entry", {
		required: true
	});

	$.extend(jQuery.validator.messages, {
		required: "Pflichtfeld",
		email: "Ungülige E-Mail-Adresse",
		url: "Ungültige URL",
		date: "Ungültiges Datum",
		dateISO: "Ungültiges Datum (ISO)",
		number: "Ungültige Nummer",
		digits: "Bitte nur Zahlen eingeben."
	});

	// validate form
	obj.each(function () {
		var $_self = $(this);
		$_self.validate({
			errorClass: 'error',
			errorElement: 'p',
			highlight: function(element, errorClass, validClass) {
				$(element).closest('.mod-form__field').addClass(errorClass);
				$(element).closest('.mod-form__list__wide').addClass(errorClass);
			},
			unhighlight: function(element, errorClass, validClass) {
				$(element).closest('.mod-form__field').removeClass(errorClass);
				$(element).closest('.mod-form__list__wide').removeClass(errorClass);
			},
			submitHandler: function(form) {
				form.submit();
			}
		});
	});
};