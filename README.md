mod-form
========

Standard html form which based on magento syntax. Includes also the jquery-Validation plugin.

Needs [jquery-validation](http://jqueryvalidation.org/) and [jquery](https://github.com/jquery/jquery) to work properly.

### HTML Markup:

```JavaScript
<!-- mod: form -->
<h2 class="mod-headline">Form Module</h2>
<section class="mod-form">
	<form action="/" method="post" class="validate">
		<p>Bitte füllen Sie alle mit (*) markierten Felder aus.</p>
		<fieldset>
			<legend>Formular</legend>
			<ul class="form-list">
				<li class="fields">
					<div class="field">
						<label for="fm-company">[Company]:<em>*</em></label>
						<div class="input-box">
							<input type="text" name="fm-company" id="fm-company" class="required-entry" value="">
						</div>
					</div>
					<div class="field">
						<label for="fm-address">[Address]</label>
						<div class="input-box">
							<input type="text" name="fm-address" id="fm-address" value="">
						</div>
					</div>
				</li>
				<li class="fields">
					<div class="fieldWrapper">
						<div class="field size-one-quarter">
							<label for="fm-zipcode">[Zip]</label>
							<div class="input-box">
								<input type="text" name="fm-zipcode" id="fm-zipcode" value="">
							</div>
						</div>
						<div class="field size-three-quarter">
							<label for="fm-city">[City]</label>
							<div class="input-box">
								<input type="text" name="fm-city" id="fm-city" value="">
							</div>
						</div>
					</div>
					<div class="field">
						<label for="fm-date">[Date]<em>*</em></label>
						<div class="input-box">
							<input type="date" name="fm-date" id="fm-date" class="required-entry" value="">
						</div>
					</div>
				</li>
				<li class="fields">
					<div class="field">
						<label for="fm-firstname">[Firstname]<em>*</em></label>
						<div class="input-box">
							<input type="text" name="fm-firstname" id="fm-firstname" class="required-entry" value="">
						</div>
					</div>
					<div class="field">
						<label for="fm-lastname">[Lastname]<em>*</em></label>
						<div class="input-box">
							<input type="text" name="fm-lastname" id="fm-lastname" class="required-entry" value="">
						</div>
					</div>
				</li>
				<li class="fields">
					<div class="field">
						<label for="fm-email">[E-Mail]<em>*</em></label>
						<div class="input-box">
							<input type="email" name="fm-email" id="fm-email" class="required-entry" value="">
						</div>
					</div>
					<div class="field error">
						<label for="fm-phone">[Phone]<em>*</em></label>
						<div class="input-box">
							<input type="tel" name="fm-phone" id="fm-phone" class="required-entry error" value="">
						</div>
					</div>
				</li>
				<li class="fields">
					<div class="field">
						<label for="fm-day">[Birthday]</label>
						<div class="input-date-wrapper">
							<div class="input-box">
								<select name="fm-day" id="fm-day">
									<option value="">TT</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</div>
							<div class="input-box">
								<select name="fm-month" id="fm-month">
									<option value="">MM</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</div>
							<div class="input-box">
								<select name="fm-year" id="fm-year">
									<option value="">JJJJ</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
							</div>
						</div>
					</div>
				</li>
				<li class="wide">
					<label for="message">[Message]<em>*</em></label>
					<div class="input-box">
						<textarea name="message" id="message" class="required-entry"></textarea>
					</div>
				</li>
				<li class="wide error">
					<label><input type="checkbox" name="input-checkbox" value="1" /> <span>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.</span></label>
				</li>
				<li class="wide">
					<div class="single-line">
						<label><input type="radio" name="input-radio" class="required-entry" value="1" /> <span>Ja</span></label>
						<label><input type="radio" name="input-radio" class="required-entry" value="2" /> <span>Nein</span></label>
					</div>
				</li>
			</ul>
			<div class="button-set">
				<button type="submit" class="btn right">Absenden</button>
			</div>
		</fieldset>
	</form>
</section>
<hr>
<!-- // -->
```

### JavaScript Snippet:

```JavaScript
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
				$(element).closest('.field').addClass(errorClass);
				$(element).closest('.wide').addClass(errorClass);
			},
			unhighlight: function(element, errorClass, validClass) {
				$(element).closest('.field').removeClass(errorClass);
				$(element).closest('.wide').removeClass(errorClass);
			},
			submitHandler: function(form) {
				form.submit();
			}
		});
	});
};
```
