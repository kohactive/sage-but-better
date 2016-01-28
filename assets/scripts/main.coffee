### ========================================================================
# DOM-based Routing
# Based on http://goo.gl/EUTi53 by Paul Irish
#
# Only fires on body classes that match. If a body class contains a dash,
# replace the dash with an underscore when adding it to the object below.
#
# .noConflict()
# The routing is enclosed within an anonymous function so that you can
# always reference jQuery with $, even when in .noConflict() mode.
#
# Google CDN, Latest jQuery
# To use the default WordPress version of jQuery, go to lib/config.php and
# remove or comment out: add_theme_support('jquery-cdn');
# ========================================================================
###

(($) ->
  # Use this variable to set up the common and page specific functions. If you
  # rename this variable, you will also need to rename the namespace below.
  Sage =
    'common':
      init: ->

      finalize: ->
        # JavaScript to be fired on all pages, after page specific JS is fired
        return

  # The routing fires all common scripts, followed by the page specific scripts.
  # Add additional events for more control over timing e.g. a finalize event
  UTIL =
    fire: (func, funcname, args) ->
      fire = undefined
      namespace = Sage
      funcname = if funcname == undefined then 'init' else funcname
      fire = func != ''
      fire = fire and namespace[func]
      fire = fire and typeof namespace[func][funcname] == 'function'
      if fire
        namespace[func][funcname] args
      return
    loadEvents: ->
      # Fire common init JS
      UTIL.fire 'common'
      # Fire page-specific init JS, and then finalize JS
      $.each document.body.className.replace(/-/g, '_').split(/\s+/), (i, classnm) ->
        UTIL.fire classnm
        UTIL.fire classnm, 'finalize'
        return
      # Fire common finalize JS
      UTIL.fire 'common', 'finalize'
      return
  # Load Events
  $(document).ready UTIL.loadEvents
  return
) jQuery