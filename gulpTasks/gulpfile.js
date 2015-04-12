/*
 * Dependencias
 */
var gulp = require('gulp'),
	concat = require('gulp-concat'),
	uglify = require('gulp-uglify'),
	minifyCSS = require('gulp-minify-css'),
	livereload = require('gulp-livereload'),
	vulcanize = require('gulp-vulcanize');

/*
 * Configuración de la tarea 'demo'
 */
gulp.task('js', function() {
	gulp.src('../sgim/static/js/*.js')
		.pipe(concat('todo.min.js'))
		.pipe(uglify())
		.pipe(gulp.dest('../sgim/static/js/'))
		.pipe(livereload());

});

gulp.task('css', function() {


	gulp.src('../sgim/static/css/*.css')
		.pipe(concat('todo.min.css'))
		.pipe(minifyCSS())
		.pipe(gulp.dest('../sgim/static/css/'))
		.pipe(livereload());
});

gulp.task('vulcanize', function () {
    var DEST_DIR = '../sgim/templates/vulc';

    return gulp.src('../sgim/templates/base.html')
        .pipe(vulcanize({
            dest: DEST_DIR,
            strip: true
        }))
        .pipe(gulp.dest(DEST_DIR));
});

gulp.task('watch', function() {

  // Watch .js files for change an run task js
  gulp.watch('../sgim/static/js/*.js', ['js']);

  // Watch .css files
  gulp.watch('../sgim/static/css/*.css', ['css']);
  // Create LiveReload server
  livereload.listen();
 
  // Watch any files in dist/, reload on change
  gulp.watch(['../sgim/static/js/*.js']).on('change', livereload.changed);
  gulp.watch(['../sgim/static/js/*.css']).on('change', livereload.changed);
  gulp.watch(['../sgim/templates/**/*.hmtl']).on('change', livereload.changed);

});

// Default task
gulp.task('default',function() {
    gulp.start('js', 'css', 'watch');
});
