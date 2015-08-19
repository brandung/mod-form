<!-- mod-form:start -->
<div class="mod-form">
    <form action="/" method="post" class="validate">
        <p>Bitte füllen Sie alle mit (*) markierten Felder aus.</p>
        <fieldset>
            <legend>Formular</legend>


            <!-- gridset example -->
            <div class="row">
                <div class="col-s-6">
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-company" id="fm-company" class="required-entry" placeholder="[Company]" value="">
                        </div>
                    </div>
                </div>
                <div class="col-s-6">
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-company" id="fm-company" class="required-entry" placeholder="[Company]" value="">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-s-6">
                    <div class="mod-form__fields">
                        <div class="mod-form__field mod-form__field--size-one-quarter">
                            <div class="mod-form__input-box">
                                <input type="text" name="fm-zipcode" id="fm-zipcode" placeholder="[Zip]" value="">
                            </div>
                        </div>
                        <div class="mod-form__field mod-form__field--size-three-quarter">
                            <div class="mod-form__input-box">
                                <input type="text" name="fm-city" id="fm-city" placeholder="[City]" value="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-s-3">
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-company" id="fm-company" class="required-entry" placeholder="[Company]" value="">
                        </div>
                    </div>
                </div>
                <div class="col-s-3">
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-company" id="fm-company" class="required-entry" placeholder="[Company]" value="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- END gridset example -->

            <br/><br/>

            <ul class="mod-form__list">
                <li>
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-company" id="fm-company" class="required-entry" placeholder="[Company]" value="">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-address" id="fm-address" placeholder="[Address]" value="">
                        </div>
                    </div>
                </li>
                <li class="mod-form__fields">
                    <div class="mod-form__field mod-form__field--size-one-quarter">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-zipcode" id="fm-zipcode" placeholder="[Zip]" value="">
                        </div>
                    </div>
                    <div class="mod-form__field mod-form__field--size-three-quarter">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-city" id="fm-city" placeholder="[City]" value="">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="date" name="fm-date" id="fm-date" class="required-entry" value="">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-firstname" id="fm-firstname" class="required-entry" placeholder="[Firstname]*" value="">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="text" name="fm-lastname" id="fm-lastname" class="required-entry" placeholder="[Lastname]*" value="">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mod-form__field">
                        <div class="mod-form__input-box">
                            <input type="email" name="fm-email" id="fm-email" class="required-entry" placeholder="[E-Mail]*" value="">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mod-form__field error">
                        <div class="mod-form__input-box">
                            <input type="tel" name="fm-phone" id="fm-phone" class="required-entry error" placeholder="[Phone]" value="">
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mod-form__fields">
                        <div class="mod-form__field">

                            <div class="mod-form__input-date-wrapper">
                                <div class="mod-form__input-box">
                                    <select name="fm-day" id="fm-day">
                                        <option value="">TT</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </div>
                                <div class="mod-form__input-box">
                                    <select name="fm-month" id="fm-month">
                                        <option value="">MM</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </div>
                                <div class="mod-form__input-box">
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
                    </div>
                </li>
                <li>
                    <div class="mod-form__list__wide">
                        <div class="mod-form__input-box">
                            <textarea name="message" id="message" class="required-entry" placeholder="[Message]*"></textarea>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mod-form__list__wide error">
                        <label><input type="checkbox" name="input-checkbox" value="1" /> <span>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.</span></label>
                    </div>
                </li>
                <li>
                    <div class="mod-form__list__wide">
                        <div class="mod-form__single-line">
                            <label><input type="radio" name="input-radio" class="required-entry" value="1" /> <span>Ja</span></label>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mod-form__list__wide">
                        <div class="mod-form__single-line">
                            <label><input type="radio" name="input-radio" class="required-entry" value="2" /> <span>Nein</span></label>
                        </div>
                    </div>
                </li>

            </ul>
            <div class="btn-set">
                <button type="submit" class="btn right">Absenden</button>
            </div>
        </fieldset>
    </form>
</div>
<!-- mod-form:end -->
