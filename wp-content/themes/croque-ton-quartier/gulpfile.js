var gulp = require('gulp')
var sass = require('gulp-sass')
var autoprefix = require("gulp-autoprefixer")
var sourcemaps = require('gulp-sourcemaps')

gulp.task('sass', function () {
    return gulp.src('sass/**/*.scss')
        .pipe(sourcemaps.init())
        .pipe(sass({
            outputStyle: 'compressed'
        }))
        .on('error', function (err) {
            this.emit('end')
        })
        .pipe(autoprefix())
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest('./'))
});

gulp.task('watch', function () {
    gulp.watch('sass/**/*.scss', gulp.series('sass'))
})